#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

for dependency in git go curl tar; do
  if ! command -v "$dependency" >/dev/null 2>&1; then
    printf 'Missing prerequisite: %s. See README.md for installation instructions.\n' "$dependency" >&2
    exit 1
  fi
done

hugo_version="$(tr -d '[:space:]' < .hugo-version)"
hugo_binary="$repo_root/.local/bin/hugo"
installed_version=""
if [[ -x "$hugo_binary" ]]; then
  installed_version="$("$hugo_binary" version)"
fi

# Official release strings may include a commit hash before +extended.
installed_release="${installed_version#hugo v}"
installed_release="${installed_release%%[+-]*}"
if [[ "$installed_release" != "$hugo_version" || "$installed_version" != *+extended* ]]; then
  case "$(uname -s)/$(uname -m)" in
    Darwin/arm64|Darwin/x86_64) platform="darwin-universal" ;;
    Linux/x86_64) platform="linux-amd64" ;;
    Linux/aarch64|Linux/arm64) platform="linux-arm64" ;;
    *) printf 'Unsupported platform. Use macOS or Linux (including WSL) on ARM64 or x86-64.\n' >&2; exit 1 ;;
  esac

  archive="hugo_extended_${hugo_version}_${platform}.tar.gz"
  release_url="https://github.com/gohugoio/hugo/releases/download/v${hugo_version}"
  download_dir="$(mktemp -d)"
  trap 'rm -rf "$download_dir"' EXIT

  printf 'Downloading Hugo Extended %s for %s...\n' "$hugo_version" "$platform"
  curl --fail --location --silent --show-error --retry 3 \
    "$release_url/$archive" -o "$download_dir/$archive"
  curl --fail --location --silent --show-error --retry 3 \
    "$release_url/hugo_${hugo_version}_checksums.txt" -o "$download_dir/checksums.txt"

  expected_checksum="$(awk -v archive="$archive" '$2 == archive { print $1 }' "$download_dir/checksums.txt")"
  if command -v shasum >/dev/null 2>&1; then
    actual_checksum="$(shasum -a 256 "$download_dir/$archive" | awk '{ print $1 }')"
  elif command -v sha256sum >/dev/null 2>&1; then
    actual_checksum="$(sha256sum "$download_dir/$archive" | awk '{ print $1 }')"
  else
    printf 'Install shasum or sha256sum to verify the Hugo download.\n' >&2
    exit 1
  fi
  if [[ -z "$expected_checksum" || "$expected_checksum" != "$actual_checksum" ]]; then
    printf 'Hugo download checksum verification failed.\n' >&2
    exit 1
  fi

  tar -xzf "$download_dir/$archive" -C "$download_dir" hugo
  mkdir -p "$repo_root/.local/bin"
  install -m 755 "$download_dir/hugo" "$hugo_binary"
fi

"$hugo_binary" version
"$hugo_binary" mod graph

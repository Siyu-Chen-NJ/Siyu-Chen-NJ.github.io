# Siyu Chen's website

Personal academic website built with Hugo Extended and the [Hugo Blox Academic theme](https://github.com/HugoBlox/theme-academic-cv).

## Local development

Prerequisites: Git, Go, Make, Bash, curl, tar, and either `shasum` or `sha256sum`.
On macOS, install Apple's command line tools with `xcode-select --install` if needed,
then install Go with `brew install go`. The other tools come with macOS/the command
line tools. On Ubuntu or WSL, install `git golang-go make curl ca-certificates`.
The site has been tested locally with Go 1.26.2.

```sh
git clone https://github.com/Siyu-Chen-NJ/Siyu-Chen-NJ.github.io.git
cd Siyu-Chen-NJ.github.io
make dev
```

Open <http://localhost:1313>. Hugo rebuilds the site and reloads the browser when
you save changes. Draft content is included in the preview. Stop the server with
`Ctrl+C`. If the port is occupied, run `make dev PORT=1314`.

`make dev` and `make build` run setup automatically. Setup downloads the exact
Hugo Extended version from `.hugo-version`, verifies its release checksum, and
installs it into the ignored `.local/bin/` directory. It also downloads the theme
modules pinned in `go.mod`; `go.sum` records their checksums. The first run needs
internet access. Supported platforms are macOS and Linux/WSL on ARM64 or x86-64.

Use these commands instead of a globally installed `hugo`: this older theme pins
Hugo **0.123.3**, and newer releases may require a theme migration. Node.js, npm,
Ruby, and Python are not needed to preview or build the site.

| Command | Purpose |
| --- | --- |
| `make setup` | Install the pinned Hugo binary and download theme modules |
| `make dev` | Start the local preview with live reload |
| `make build` | Build the production site into `public/`, excluding drafts |
| `./.local/bin/hugo <command>` | Run other Hugo commands using the pinned version |

Additional Hugo flags can be passed with `HUGO_ARGS`, for example:

```sh
make build HUGO_ARGS='--baseURL https://siyu-chen-nj.github.io/'
```

## Where to edit

| Content | Location |
| --- | --- |
| Biography, education, social links | `content/authors/admin/_index.md` |
| Profile photo | `content/authors/admin/avatar.png` |
| Homepage sections and their order | `content/_index.md` |
| Publications | `content/publication/` and `publications.bib` |
| Research narrative and future agenda | `content/research/index.md` |
| Downloadable CV | `static/uploads/Siyu_Academic_CV.pdf` |
| Navigation | `config/_default/menus.yaml` |
| Appearance and site features | `config/_default/params.yaml` |
| Site title and production URL | `config/_default/hugo.yaml` |
| Images and downloadable files | `assets/media/` and `static/uploads/` |

Edit the source files, then review the preview and run `make build` before
committing. `public/`, `resources/`, and `.local/` are generated and ignored.
When changing Hugo versions, update `.hugo-version` and `netlify.toml` together.

The site content was updated from the supplied CV and research statement. See
[the content review](docs/content-review.md) for source checks, unresolved
differences, and maintenance notes. Under-review manuscripts are maintained in
`content/_index.md`, separately from the published/accepted bibliography.

## GitHub workflow

Create a branch for changes, commit them, and open a pull request into `main`.
The build workflow runs `make build` on pushes and pull requests. Changes merged
into `main` trigger the GitHub Pages deployment workflow, which uses the same
Hugo version and overrides `baseURL` with the URL supplied by GitHub Pages.
In the repository's **Settings → Pages**, the source should be **GitHub Actions**.

The configured `baseURL` is currently `https://siyu.chen`; local preview overrides
it with localhost, and Pages deployment uses the repository's Pages URL. Update
the configuration if your intended production domain changes.

To push, your GitHub CLI account must have write access. Check it with:

```sh
gh auth status
gh repo view Siyu-Chen-NJ/Siyu-Chen-NJ.github.io --json viewerPermission
```

If necessary, sign in to the owner account with
`gh auth login --hostname github.com --git-protocol https --web`, or grant your
development account collaborator access. Set your desired Git author name/email
with repository-local `git config user.name` and `git config user.email` before
committing.

The existing publication importer creates a pull request when `publications.bib`
changes on `main`. It runs separately from the site build and requires GitHub
Actions permission to create pull requests.

## Credits

Based on the [Hugo Blox Academic CV theme](https://github.com/HugoBlox/theme-academic-cv).
See [LICENSE.md](LICENSE.md) for the license. Template demo images are from
[Unsplash](https://unsplash.com).

# Website content review

Updated on 2026-09-19 using the supplied `Siyu_Academic_CV.pdf` and
`Research_Statement.pdf`. The CV is the primary source for education, appointments,
publication status, awards, teaching, presentations, service, and skills. The
research statement supplies the research narrative and proposed future agenda.

The downloadable CV is an unchanged copy of the supplied file. The research
statement is used as source material and is not included as a public download.

## Details to confirm

| Topic | Source difference | Website treatment |
| --- | --- | --- |
| Competitive Bayesian Optimization | CV: PNAS Nexus, under review (2025). Research statement: IEEE Transactions on Automation Science and Engineering, under review (2026). | Listed as under review without a venue or year until confirmed. |
| Robust Multi-agent Bayesian Optimization | CV: Journal of Mechanical Design, under review (2025). Research statement: Structural and Multidisciplinary Optimization, under review (2026). | Listed as under review without a venue or year until confirmed. |
| Robust-design performance | CV: more than 20% improvement in worst-case performance and more than 70% reduction in variability. Statement: approximately 13% improvement over an initial design. These may describe different metrics or studies. | No percentage claims are included. The website describes the methods and application. |
| EOS North America internship | The CV uses present-tense descriptions for Oct. 2026–Mar. 2027. | Labeled upcoming, with planned work, because the start is after the update date. Update the wording when the appointment begins. |
| AAAI manuscript | The CV lists an under-review submission for 2027. | Shown as a 2027 conference submission under review, not as an accepted or published 2027 paper. |
| IEEE Access citation year | CV: 2019; IEEE's deposited metadata: volume 8 (2020), pp. 36043–36054. | The website and BibTeX use the volume's 2020 citation year. The original downloadable CV has not been edited. |

## Accuracy choices

- The profile is Ph.D. **candidate**, expected May 2027. Education titles and dates
  follow the CV, including the M.Eng. in Control Engineering and B.Eng. in
  Electrical Engineering.
- The 11 publication records comprise four journal articles and seven conference
  papers. Two remain explicitly labeled **Accepted**; nine are listed as
  published. Three manuscripts appear separately on the homepage under **Under
  Review**. No submission venue has been treated as an acceptance.
- The 2026 accepted journal article and 2024 conference paper about distributed
  multi-agent Bayesian optimization are distinct records. The conference DOI
  and PDF are not assigned to the accepted journal article.
- Initials are expanded only when verified in publisher records, the research
  statement, or an author-hosted paper. The incomplete AAAI author list retains
  the CV's initials and “et al.”
- Publication `date` fields use January 1 of the citation year for Hugo's sorting
  and year filters. Exact day/month publication dates are not displayed. These
  are not claims of exact publication or acceptance dates.
- The research agenda is explicitly described as proposed/future work. The site
  does not claim that an independent group or those future capabilities already
  exists.
- No GPA, grant number, funding amount, internship offer detail, code repository,
  or undocumented publication abstract has been inferred or invented.
- Existing GitHub, LinkedIn, and SiDi Lab links were retained. The CV confirms the
  Google Scholar profile ID and contact email. No new social profile was inferred.
- The prior template author's jobs, publications, awards, teaching, example
  projects/posts/talks/slides, and old/sample CV PDFs have been removed. Original
  repository versions remain recoverable from Git; a local backup also exists
  under the ignored `.local/template-backup/` directory.

## Publication checks and links

Publisher-deposited Crossref metadata was used to confirm matching titles,
author order, citation details, and DOI links where available. A partial metadata
snapshot is kept locally under `.local/source-text/` (not published).

- [Cost-aware multi-agent design exploration](https://doi.org/10.1115/1.4065914):
  Journal of Mechanical Design, 147(1), 011703 (2025); first online in 2024. The
  website uses the CV/research statement's 2025 issue year.
- [Distributed exploration, 2024 proceedings](https://doi.org/10.1115/DETC2024-143377).
- [Multi-agent exploration, 2023 proceedings](https://doi.org/10.1115/DETC2023-115112).
- [Underwater image segmentation, Springer](https://link.springer.com/article/10.1007/s11042-021-10693-7):
  confirms full author names, 2021 citation details, and Siyu as corresponding author.
- [IEEE Access publisher-deposited metadata](https://api.crossref.org/works/10.1109%2FACCESS.2019.2955968):
  confirms volume 8, pages 36043–36054, citation year 2020, and author order.
- [Game-theoretic platform, Cambridge](https://doi.org/10.1017/pds.2025.10024):
  Proceedings of the Design Society 5, 101–110 (2025); confirms Xiang Li as first author.
- [Cooperative learning, author-submitted preprint](https://arxiv.org/abs/2402.03048):
  confirms full author names and order. The ACC venue/pages follow the CV; the
  preprint link is labeled as a preprint rather than as the proceedings version.
- [UAV navigation publisher-deposited metadata](https://api.crossref.org/works/10.1109%2FICCASIT48058.2019.8973027):
  confirms Siyu Chen, Lei Wang, Wei Chen, the 2019 proceedings, and pages 315–320.
- [SiDi Lab publication list](https://sidilab.net/publications/publications-in-categories/):
  corroborates the ASME conference records and provides author-hosted PDFs.
- [Constrained robust-design paper, author-hosted PDF](https://sidilab.net/wp-content/uploads/2025/10/idetc_2025_constrained_bayesian_optimization_final.pdf).

## Maintaining the content

- Homepage sections and under-review manuscript details: `content/_index.md`.
- Biography and education: `content/authors/admin/_index.md`.
- Research narrative and future agenda: `content/research/index.md`.
- Publications: one folder per record under `content/publication/`, with a matching
  `cite.bib`; keep the root `publications.bib` consistent.
- The root bibliography contains only the 11 published/accepted records. Manuscripts
  are intentionally maintained separately so a bibliography import does not imply
  an unconfirmed publication year or journal acceptance.
- Original CV download: `static/uploads/Siyu_Academic_CV.pdf`.

## Validation

- Production build succeeds with the pinned Hugo version.
- All 11 publication records render on the homepage; the archive contains four
  journal articles and seven conference papers.
- Generated HTML contains no broken internal file targets or the removed
  template-author content. The CV, research page, archive, and all 11 BibTeX
  downloads return HTTP 200 locally.
- Desktop (1440 px) and mobile (390 px) previews have no horizontal overflow.
  Mobile navigation reaches the research section, and the research page fits
  the mobile viewport. No homepage JavaScript exceptions were observed.

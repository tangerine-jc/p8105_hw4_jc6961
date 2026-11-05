# Junze Cao | P8105 Homework 4

This R Project contains two separate R Markdown solutions.

## Problem 1: personal website

The personal website contains an introductory landing page and a resume with
education and selected technical experience. Its navigation links to GitHub,
email, and LinkedIn. It does not display the Problem 2 dashboard.

- Source: [`index.Rmd`](index.Rmd) and [`resume.Rmd`](resume.Rmd).
- Intended website URL: <https://tangerine-jc.github.io/p8105_hw4_jc6961/>.
- Navigation and styling: `_site.yml` and `assets/`.

Submit the **website URL**, rather than the repository URL, to Courseworks after
publication.

## Problem 2: standalone interactive dashboard

The separate [`problem2/dashboard.Rmd`](problem2/dashboard.Rmd) produces a
flexdashboard with three distinct Plotly chart types: line, bar, and scatter.
It loads `ny_noaa` directly from `p8105.datasets` and filters to 2010. The data
and methods tab documents units, missingness, aggregation, and interpretation
limits. The scatterplot uses a reproducible sample of 4,000 station-day records.

- Rendered dashboard: [`problem2/dashboard.html`](problem2/dashboard.html).
- Intended dashboard URL:
  <https://tangerine-jc.github.io/p8105_hw4_jc6961/problem2/dashboard.html>.
- Styles and browser dependencies live inside `problem2/`.

The dashboard is rendered separately and excluded from the personal website's
site build. This README records its entry point for review and grading.

## Reproduce

Open `p8105_hw4_jc6961.Rproj` in RStudio and run `source("build.R")` from the
project root to rebuild both components. To render them separately:

```r
# Problem 1
rmarkdown::render("index.Rmd")
rmarkdown::render("resume.Rmd")

# Problem 2
rmarkdown::render(
  "problem2/dashboard.Rmd",
  output_format = "flexdashboard::flex_dashboard")
```

R Markdown requires Pandoc (included with RStudio) and the R packages
`rmarkdown`, `knitr`, `dplyr`, `plotly`, `flexdashboard`, and `p8105.datasets`.
Install any missing dependencies separately before rendering. The source
documents do not install packages, and all local paths are relative.

## Publish after review

Commit the rendered HTML along with both `site_libs/` dependency directories.
After reviewing the local result, push `main` and enable GitHub Pages using
**Deploy from a branch**, **main**, **/ (root)** in the repository settings.
Wait for deployment to finish and verify both URLs before submitting.

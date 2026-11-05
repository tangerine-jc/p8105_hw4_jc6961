# Junze Cao | P8105 Homework 4

Personal website and interactive NY NOAA weather dashboard, written in R Markdown.

## Website

The intended GitHub Pages address is <https://tangerine-jc.github.io/p8105_hw4_jc6961/>.
Submit the **website URL**, rather than the repository URL, to Courseworks after publication.

## Project structure

- `index.Rmd`: introductory landing page.
- `resume.Rmd`: education, professional experience, and skills.
- `dashboard.Rmd`: three distinct interactive Plotly charts in a flexdashboard.
- `_site.yml` and `assets/`: navigation and styling.
- `build.R`: rebuilds all three HTML pages using their intended output formats.
- `p8105_hw4_jc6961.Rproj`: local RStudio project.

## Reproduce

Open the R Project and run `source("build.R")` from the project root.
R Markdown requires Pandoc (included with RStudio) and the R packages
`rmarkdown`, `knitr`, `dplyr`, `plotly`, `flexdashboard`, and `p8105.datasets`.
Install any missing dependencies separately before rendering; the source documents
do not install packages. Data are loaded directly from `p8105.datasets`, and all
local asset paths are relative to this project.

The dashboard uses all available New York station-day records from 2010, rather
than shipping the full dataset to the browser. Its methods page documents units,
missingness, aggregation, and interpretation limits.

## Publish after review

The rendered HTML and `site_libs/` must be committed together. Once the local
result has been reviewed, push `main` and enable GitHub Pages using **Deploy from
a branch**, **main**, **/ (root)** in the repository settings. Wait for the Pages
deployment to finish and verify the website URL before submitting it.

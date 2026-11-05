# Run from the R Project root after installing dependencies separately.
# RStudio normally locates its bundled Pandoc automatically.
if (!rmarkdown::pandoc_available()) {
  stop("Pandoc was not found. Run this script in RStudio or add Pandoc to PATH.")
}

rmarkdown::render("index.Rmd", quiet = TRUE)
rmarkdown::render("resume.Rmd", quiet = TRUE)

# Explicitly select flexdashboard so the site format cannot override it.
rmarkdown::render(
  "dashboard.Rmd",
  output_format = "flexdashboard::flex_dashboard",
  quiet = TRUE)

# Run from the R Project root after installing dependencies separately.
# RStudio normally locates its bundled Pandoc automatically.
if (!rmarkdown::pandoc_available()) {
  stop("Pandoc was not found. Run this script in RStudio or add Pandoc to PATH.")
}

rmarkdown::render("index.Rmd", quiet = TRUE)
rmarkdown::render("resume.Rmd", quiet = TRUE)

# Problem 2 is rendered separately from the personal website (Problem 1).
rmarkdown::render(
  "problem2/dashboard.Rmd",
  output_format = "flexdashboard::flex_dashboard",
  quiet = TRUE)

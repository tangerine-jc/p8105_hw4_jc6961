# Problem 1: build the personal website using the lecture command.
rmarkdown::render_site()

# Problem 2: render the separate flexdashboard using the lecture command.
rmarkdown::render(
  "problem2/p8105_hw4_jc6961.Rmd",
  output_format = "flexdashboard::flex_dashboard")

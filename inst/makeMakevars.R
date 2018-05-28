library(whisker)
txt <- paste(readLines("src/Makevars.in"), collapse = "\n")

parmas <- list(BHPATH =
  paste(
    paste("-I", R.home("include"), sep = ""),
    system2("R", args = "CMD config CXX11STD", stdout = TRUE),
    system2("R", args = "CMD config CXXFLAGS", stdout = TRUE),
    paste("-I\"", system.file("include", package = "BH"), "\"", sep = ""),
    paste("-I\"", system.file("include", package = "Rcpp"), "\"", sep = "")
    )
  )

cat(whisker.render(txt, parmas), file = "src/Makevars")

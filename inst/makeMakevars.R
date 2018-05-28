library(whisker)
txt <- paste(readLines("src/Makevars.in"), collapse = "\n")

parmas <- list(BHPATH =
  paste(
    system2("R", args = "CMD config CXX11STD", stdout = TRUE),
    system2("R", args = "CMD config CXXFLAGS", stdout = TRUE),
    paste("-I\"", system.file("include", package = "BH"), "\"", sep = ""))
  )




cat(whisker.render(txt, parmas), file = "src/Makevars")

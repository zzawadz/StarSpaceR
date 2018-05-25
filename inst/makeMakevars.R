library(whisker)
txt <- paste(readLines("src/Makevars.in"), collapse = "\n")

parmas <- list(BHPATH = paste("-I\"", system.file("include", package = "BH"), "\"", sep = ""))
cat(whisker.render(txt, parmas), file = "src/Makevars")

library(fastrtext)
data("train_sentences")
text <- paste(train_sentences$text, sprintf("__label__%s", train_sentences$class.text))
cat(text, file = "inst/exdata/text.txt", sep = "\n")


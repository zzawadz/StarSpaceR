test_that("Basic functions", {

  modelPath <- system.file(package = "StarSpaceR", "exdata/model_class")


  model <- ssr_load_model(modelPath)
  model$get_vector("wordsfdaa")
  microbenchmark::microbenchmark(ssr_get_vectors(model, c("words", "topology")))

})

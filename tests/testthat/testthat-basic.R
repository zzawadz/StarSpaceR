test_that("Basic functions", {

  modelPath <- system.file(package = "StarSpaceR", "exdata/model_class")
  model <- ssr_load_model(modelPath)

  vecs <- model$get_vector("words")

  expect_true(!anyNA(vecs))
  expect_equal(length(vecs), 10)

  expect_equal(ssr_get_vectors(model, "words")[1,],  model$get_vector("words"))
  expect_equal(dim(ssr_get_vectors(model, c("words", "topology"))), c(2,10))

  expect_equal(model$get_dictionary_size(), 5315)
  expect_equal(model$get_dictionary_size(), model$get_dictionary_nlabels() + model$get_dictionary_nwords())

})

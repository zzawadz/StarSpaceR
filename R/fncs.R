#' Load StarSpace model.
#'
#' @param path
#'
#' @return
#' @export
#'
ssr_load_model <- function(path) {
  model <- new(StarSpaceR:::starspaceR)
  model$load_model(path)
  model
}

#' Extract words embeddings from StarSpace model.
#'
#' @param path
#'
#' @return
#' @importFrom assertthat assert_that
#' @export
#'
ssr_get_vectors <- function(model, words) {
  assert_that(is.character(words))
  model$get_vectors(words)
}

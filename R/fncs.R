#' Load StarSpace model.
#'
#' @param path
#'
#' @return
#'
#' A StarSpaceR object.
#'
#' @export
#'
ssr_load_model <- function(path) {
  model <- new(starspaceR)
  model$load_model(path)
  model
}

#' Extract words embeddings from StarSpace model.
#'
#' @param path
#'
#' @return
#'
#' A matrix with words embeddings in rows.
#'
#' @importFrom assertthat assert_that
#' @export
#'
ssr_get_vectors <- function(model, words) {
  assert_that(is.character(words))
  model$get_vectors(words)
}

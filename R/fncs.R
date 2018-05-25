load_model <- function(path) {
  model <- new(StarSpaceR:::starspaceR)
  model$load_model(path)
  model
}

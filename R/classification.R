#' Calculate area under the curve.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
auc_score <- function(y_true, y_pred) {
  return(1L)
}

#' Calculate accuracy score.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
accuracy_score <- function(y_true, y_pred) {
  return((y_true == y_pred) / length(y_true))
}

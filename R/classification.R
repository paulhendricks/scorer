#' Calculate area under the curve.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
auc_score <- function(y_true, y_pred) {
  r <- rank(y_pred)
  n_pos <- sum(y_true == 1)
  n_neg <- length(y_true) - n_pos
  auc <- (sum(r[y_true == 1]) - n_pos * (n_pos + 1) /2) / (n_pos * n_neg)
  return(auc)
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

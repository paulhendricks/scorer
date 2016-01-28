#' Calculate mean absolute scaled error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
mean_absolute_scaled_error <- function(y_true, y_pred) {
  n <- max(length(y_true), length(y_pred))
  numerator <- sum(abs(y_true - y_pred))
  denominator <- (n / (n - 1)) * sum(abs(y_true[2:n] - y_pred[1:(n-1)]))
  return(numerator / denominator)
}

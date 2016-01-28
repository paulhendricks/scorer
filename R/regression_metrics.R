#' Calculate absolute error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
#' @examples
#' absolute_error(1:10, 10:1)
#' @export
absolute_error <- function(y_true, y_pred) {
  absolute_error_rcpp(y_true, y_pred)
}

#' Calculate percent error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
#' @examples
#' percent_error(1:10, 10:1)
#' @export
percent_error <- function(y_true, y_pred) {
  percent_error_rcpp(y_true, y_pred)
}

#' Calculate absolute percent error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
#' @examples
#' absolute_percent_error(1:10, 10:1)
#' @export
absolute_percent_error <- function(y_true, y_pred) {
  absolute_percent_error_rcpp(y_true, y_pred)
}

#' Calculate squared error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
#' @examples
#' squared_error(1:10, 10:1)
#' @export
squared_error <- function(y_true, y_pred) {
  squared_error_rcpp(y_true, y_pred)
}

#' Calculate mean error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @examples
#' mean_error(1:10, 10:1)
#' @export
mean_error <- function(y_true, y_pred) {
  mean_error_rcpp(y_true, y_pred)
}
















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

#' Calculate total variance regression score function.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
total_variance_score <- function(y_true, y_pred) {
  return(sum((y_true - mean(y_true)) ^ 2))
}

#' Calculate explained variance regression score function.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
explained_variance_score <- function(y_true, y_pred) {
  return(sum((y_pred - mean(y_true)) ^ 2))
}

#' Calculate unexplained variance regression score function.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
unexplained_variance_score <- function(y_true, y_pred) {
  return(sum((y_true - y_pred) ^ 2))
}

#' Calculate R^2 (coefficient of determination) regression score function.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
r2_score <- function(y_true, y_pred) {
  return(explained_variance_score(y_true, y_pred) / total_variance_score(y_true, y_pred))
}

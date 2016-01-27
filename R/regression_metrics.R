#' Calculate median absolute error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
median_absolute_error <- function(y_true, y_pred) {
  message("Function not implemented in C++ yet.")
  return(median(absolute_error(y_true = y_true, y_pred = y_pred)))
}

#' Calculate mean percent error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
mean_percent_error <- function(y_true, y_pred) {
  return(mean(percent_error(y_true = y_true, y_pred = y_pred)))
}

#' Calculate median percent error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
median_percent_error <- function(y_true, y_pred) {
  return(median(percent_error(y_true = y_true, y_pred = y_pred)))
}

#' Calculate mean squared error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
mean_squared_error <- function(y_true, y_pred) {
  return(mean(squared_error(y_true = y_true, y_pred = y_pred)))
}

#' Calculate median squared error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
median_squared_error <- function(y_true, y_pred) {
  return(median(squared_error(y_true = y_true, y_pred = y_pred)))
}

#' Calculate absolute mean percent error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
mean_absolute_percent_error <- function(y_true, y_pred) {
  return(mean(absolute_percent_error(y_true = y_true, y_pred = y_pred)))
}

#' Calculate median absolute percent error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
median_absolute_percent_error <- function(y_true, y_pred) {
  return(median(absolute_percent_error(y_true = y_true, y_pred = y_pred)))
}

#' Calculate R^2 (coefficient of determination) regression score function.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
r2_score <- function(y_true, y_pred) {
  return(1L)
}

#' Calculate explained variance regression score function.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
explained_variance_score <- function(y_true, y_pred) {
  return(1L)
}

#' Calculate explained variance regression score function.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @export
mean_absolute_scaled_error <- function(y_true, y_pred) {
  return(1L)
}

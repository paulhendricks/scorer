#' Calculate area under the curve between actual and forecast.
#'
#' \code{auc} calculates the area under the curve.
#'
#' @param actual A binary numeric vector of actuals.
#' @param forecast A binary numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#' auc(1:100, 100:1)
#' @export
auc <- function(actual, forecast) {
  message("This function has still not been implemented in C++.")
  if(!is.numeric(actual) | !is.numeric(forecast))
    stop("actual and forecast must be numeric vectors.")
  r <- rank(forecast)
  n_pos <- sum(actual == 1)
  n_neg <- length(actual) - n_pos
  auc <- (sum(r[actual == 1]) - n_pos * (n_pos + 1) / 2) / (n_pos * n_neg)
  auc
}

#' Calculate squared errors between actual and forecast.
#'
#' Calculate squared errors between actual and forecast.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector.
#' @examples
#' # Examples
#' se(1:100, 100:1)
#' @export
se <- function(actual, forecast) {
  return((actual - forecast) ^ 2)
}

#' Calculate log squared errors between actual and forecast.
#'
#' Calculate log squared errors between actual and forecast.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector.
#' @examples
#' # Examples
#' lse(1:100, 100:1)
#' @export
lse <- function(actual, forecast) {
  return(log((actual - forecast) ^ 2))
}

#' Calculate mean squared errors between actual and forecast.
#'
#' \code{mse} calculates the mean squared errors between actual and forecast.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#' mse(1:100, 100:1)
#' @export
mse <- function(actual, forecast) {
  return(mean((actual - forecast) ^ 2))
}

#' Calculate mean log squared errors between actual and forecast.
#'
#' Calculate mean log squared errors between actual and forecast.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#' mlse(1:100, 100:1)
#' @export
mlse <- function(actual, forecast) {
  return(mean(log((actual - forecast) ^ 2)))
}

#' Title.
#'
#' \code{function_name} does something.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#'
#' @export
rmsle <- function(actual, forecast) {
  warning("This function is still under development.")
  return(1L)
}

#' Title.
#'
#' \code{function_name} does something.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#'
#' @export
sle <- function(actual, forecast) {
  warning("This function is still under development.")
  return(1L)
}

#' Title.
#'
#' \code{function_name} does something.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#'
#' @export
smape <- function(actual, forecast) {
  warning("This function is still under development.")
  return(1L)
}

#' Title.
#'
#' \code{function_name} does something.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#'
#' @export
mase <- function(actual, forecast) {
  warning("This function is still under development.")
  return(1L)
}

#' Title.
#'
#' \code{function_name} does something.
#'
#' @param actual A numeric vector of actuals.
#' @param forecast A numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#'
#' @export
score <- function(actual, forecast) {
  warning("This function is still under development.")
  return(1L)
}

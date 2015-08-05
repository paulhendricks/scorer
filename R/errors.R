#' Calculate area under the curve between actual and forecast.
#'
#' \code{auc} does something.
#'
#' @param actual A binary numeric vector of actuals.
#' @param forecast A binary numeric vector of forecasts.
#' @return  A numeric vector of length one.
#' @examples
#' # Examples
#' auc(1:100, 100:1)
#' @export
auc <- function(actual, forecast) {
  if(!is.numeric(actual) | !is.numeric(forecast)) stop("actual and forecast must be numeric vectors.")
  r <- rank(forecast)
  n_pos <- sum(actual == 1)
  n_neg <- length(actual) - n_pos
  auc <- (sum(r[actual == 1]) - n_pos * (n_pos + 1) / 2) / (n_pos * n_neg)
  auc
}


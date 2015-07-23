#' Calculate root mean squared error.
#'
#' \code{rmse} takes actual and forecast numeric vectors and returns a
#' numeric vector where forecast is subtracted from the actual,
#' the errors are then squared, the average of those squared error is
#' taken, and lastly, the root taken of that mean squared error value.
#'
#' @param actual a numeric vector of actuals.
#' @param forecast a numeric vector of forecasts.
#' @param na.rm a logical value indicating whether \code{NA} values should be stripped before the computation proceeds.
#' @param ... additional arguments to be passed to mean()
#' @return  a numeric vector of length one: the mean of of absolute percent errors.
#' @examples
#' # Examples
#' rmse(1:100, 100:1)
#' @export
rmse <- function(actual, forecast, na.rm = TRUE, ...) {
  return(sqrt(mean(e(actual, forecast) ^ 2, na.rm = na.rm, ...)))
}

#' Calculate absolute percent error between actual and forecast.
#'
#' \code{pe} takes actual and forecast numeric vectors and returns a
#' numeric vector where forecast is subtracted from the actual and
#' then those errors are divided by the actuals. Lastly, the
#' absolute value of those percent errors are taken.
#'
#' @param actual a numeric vector of actuals.
#' @param forecast a numeric vector of forecasts.
#' @return  a numeric vector of absolute percent errors.
#' @examples
#' # Examples
#' ape(1:100, 100:1)
#' @export
ape <- function(actual, forecast) return(abs(pe(actual, forecast)))

#' Calculate mean absolute percent error between actual and forecast.
#'
#' \code{mape} takes actual and forecast numeric vectors and returns a
#' numeric vector where forecast is subtracted from the actual and
#' then those errors are divided by the actuals, the
#' absolute value of those percent errors are then taken, and lastly,
#' the mean of those absolute percent errors are taken.
#'
#' @param actual a numeric vector of actuals.
#' @param forecast a numeric vector of forecasts.
#' @param na.rm a logical value indicating whether \code{NA} values should be stripped before the computation proceeds.
#' @param ... additional arguments to be passed to mean()
#' @return  a numeric vector of length one: the mean of of absolute percent errors.
#' @examples
#' # Examples
#' mape(1:100, 100:1)
#' @export
mape <- function(actual, forecast, na.rm = TRUE, ...) {
  return(mean(ape(actual, forecast), na.rm = na.rm, ...))
}

#' Check the arguments.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  Boolean vector of length one.
#' @export
check_args <- function(y_true, y_pred) {
  return(stopifnot(length(y_true) == length(y_pred)))
}

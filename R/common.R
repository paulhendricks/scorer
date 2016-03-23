#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @  return  TO BE EDITED.
#' @export
check_args <- function(y_true, y_pred) {
  stopifnot(length(y_true) == length(y_pred))
  return(TRUE)
}

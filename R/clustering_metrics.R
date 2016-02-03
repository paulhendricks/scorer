#' Calculate absolute error regression loss.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
#' @family clustering metrics
#' @examples
#' adjusted_mutual_info_score(1:10, 10:1)
#' @export
adjusted_mutual_info_score <- function(y_true, y_pred) {
  return(1L)
}

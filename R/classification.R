#' total_population
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @examples
#' total_population(1:10, 10:1)
#' @export
total_population <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(length(y_true))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
true_positive <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(sum((y_true == y_pred) & (y_true == 1)))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
true_negative <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(sum((y_true == y_pred) & (y_true == 0)))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
false_positive <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(sum(!(y_true == y_pred) & (y_true == 1)))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
false_negative <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(sum(!(y_true == y_pred) & (y_true == 0)))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
condition_positive <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(sum(y_true == 1))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
condition_negative <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(sum(y_true == 0))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
predicted_condition_positive <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(sum(y_true == 1))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
predicted_condition_negative <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  return(sum(y_pred == 0))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
accuracy_score <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  tp <- true_positive(y_true = y_true, y_pred = y_pred)
  tn <- true_negative(y_true = y_true, y_pred = y_pred)
  tot_pop <- total_population(y_true = y_true, y_pred = y_pred)
  return((tp + tn) / tot_pop)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
accuracy <- accuracy_score

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
prevalence <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  cn <- condition_positive(y_true = y_true, y_pred = y_pred)
  tot_pop <- total_population(y_true = y_true, y_pred = y_pred)
  return(cn / tot_pop)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
positive_predictive_value <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  tp <- true_positive(y_true = y_true, y_pred = y_pred)
  pcp <- predicted_condition_positive(y_true = y_true, y_pred = y_pred)
  return(tp / pcp)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
precision <- positive_predictive_value

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
false_discovery_rate <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  fp <- false_positive(y_true = y_true, y_pred = y_pred)
  pcp <- predicted_condition_positive(y_true = y_true, y_pred = y_pred)
  return(fp / pcp)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
negative_predictive_value <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  tn <- true_negative(y_true = y_true, y_pred = y_pred)
  pcn <- predicted_condition_negative(y_true = y_true, y_pred = y_pred)
  return(tn / pcn)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
false_omission_rate <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  fn <- false_negative(y_true = y_true, y_pred = y_pred)
  pcn <- predicted_condition_negative(y_true = y_true, y_pred = y_pred)
  return(fn / pcn)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
true_positive_rate <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  tp <- true_positive(y_true = y_true, y_pred = y_pred)
  cp <- condition_positive(y_true = y_true, y_pred = y_pred)
  return(tp / cp)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export

sensitivity <- true_positive_rate
#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
recall <- true_positive_rate

false_positive_rate <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  fp <- false_positive(y_true = y_true, y_pred = y_pred)
  cn <- condition_negative(y_true = y_true, y_pred = y_pred)
  return(fp / cn)
}

false_negative_rate <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  fn <- false_negative(y_true = y_true, y_pred = y_pred)
  cp <- condition_positive(y_true = y_true, y_pred = y_pred)
  return(fn / cp)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
true_negative_rate <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  tn <- true_negative(y_true = y_true, y_pred = y_pred)
  cn <- condition_negative(y_true = y_true, y_pred = y_pred)
  return(tn / cn)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
specificity <- true_negative_rate

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
positive_likelihood_ratio <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  tpr <- true_positive_rate(y_true = y_true, y_pred = y_pred)
  fpr <- false_positive_rate(y_true = y_true, y_pred = y_pred)
  return(tpr / fpr)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
negative_likelihood_ratio <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  fnr <- false_negative_rate(y_true = y_true, y_pred = y_pred)
  tnr <- true_negative_rate(y_true = y_true, y_pred = y_pred)
  return(fnr / tnr)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
diagnostic_odds_ratio <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  plr <- positive_likelihood_ratio(y_true = y_true, y_pred = y_pred)
  nlr <- negative_likelihood_ratio(y_true = y_true, y_pred = y_pred)
  return(plr / nlr)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
f1_score <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  tp <- true_positive(y_true = y_true, y_pred = y_pred)
  fp <- false_positive(y_true = y_true, y_pred = y_pred)
  fn <- false_negative(y_true = y_true, y_pred = y_pred)
  numerator <- 2 * tp
  denominator <- 2 * tp + fp + fn
  return(numerator / denominator)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  A numeric vector of length one.
#' @family classification metrics
#' @export
matthews_corrcoef <- function(y_true, y_pred) {
  check_args(y_true = y_true, y_pred = y_pred)
  tp <- true_positive(y_true = y_true, y_pred = y_pred)
  fp <- false_positive(y_true = y_true, y_pred = y_pred)
  tn <- true_negative(y_true = y_true, y_pred = y_pred)
  fn <- false_negative(y_true = y_true, y_pred = y_pred)
  numerator <- (tp * tn) - (fp * fn)
  denominator <- (tp + fp) * (tp + fn) * (tn + fp) * (tn + fn)
  return(numerator / (denominator ^ 0.5))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
total_population <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(length(y_true))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
true_positive <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(sum((y_true == y_pred) & (y_true == 1)))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
true_negative <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(sum((y_true == y_pred) & (y_true == 0)))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
false_positive <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(sum(!(y_true == y_pred) & (y_true == 1)))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
false_negative <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(sum(!(y_true == y_pred) & (y_true == 0)))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
condition_positive <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(sum(y_true == 1))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
condition_negative <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(sum(y_true == 0))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
predicted_condition_positive <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(sum(y_true == 1))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
predicted_condition_negative <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(sum(y_pred == 0))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
accuracy_score <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  correct <- true_positive(y_true, y_pred) + true_negative(y_true, y_pred)
  return(correct / total_population(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
accuracy <- accuracy_score

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
prevalence <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(condition_positive(y_true, y_pred) / total_population(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
positive_predictive_value <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(true_positive(y_true, y_pred) / predicted_condition_positive(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
precision <- positive_predictive_value

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
false_discovery_rate <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(false_positive(y_true, y_pred) / predicted_condition_positive(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
negative_predictive_value <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(true_negative(y_true, y_pred) / predicted_condition_negative(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
false_omission_rate <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(false_negative(y_true, y_pred) / predicted_condition_negative(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
true_positive_rate <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(true_positive(y_true, y_pred) / condition_positive(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export

sensitivity <- true_positive_rate
#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
recall <- true_positive_rate

false_positive_rate <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(false_positive(y_true, y_pred) / condition_negative(y_true, y_pred))
}

false_negative_rate <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(false_negative(y_true, y_pred) / condition_positive(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
true_negative_rate <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(true_negative(y_true, y_pred) / condition_negative(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
specificity <- true_negative_rate

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
positive_likelihood_ratio <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(true_positive_rate(y_true, y_pred) / false_positive_rate(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
negative_likelihood_ratio <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(false_negative_rate(y_true, y_pred) / true_negative_rate(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
diagnostic_odds_ratio <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  return(positive_likelihood_ratio(y_true, y_pred) / negative_likelihood_ratio(y_true, y_pred))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
f1_score <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  numerator <- 2 * true_positive(y_true, y_pred)
  denominator <- 2 * true_positive(y_true, y_pred) + false_positive(y_true, y_pred) + false_negative(y_true, y_pred)
  return(numerator / denominator)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
matthews_corrcoef <- function(y_true, y_pred) {
  check_args(y_true, y_pred)
  numerator_1 <- true_positive(y_true, y_pred) * true_negative(y_true, y_pred)
  numerator_2 <- false_positive(y_true, y_pred) * false_negative(y_true, y_pred)
  numerator <- numerator_1 - numerator_2
  denominator_1 <- true_positive(y_true, y_pred) + false_positive(y_true, y_pred)
  denominator_2 <- true_positive(y_true, y_pred) + false_negative(y_true, y_pred)
  denominator_3 <- true_negative(y_true, y_pred) + false_positive(y_true, y_pred)
  denominator_4 <- true_negative(y_true, y_pred) + false_negative(y_true, y_pred)
  denominator <- denominator_1 * denominator_2 * denominator_3 * denominator_4
  return(numerator / (denominator ^ 0.5))
}

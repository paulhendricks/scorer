#' Calculate area under the curve.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
auc_score <- function(y_true, y_pred) {
  r <- rank(y_pred)
  n_pos <- sum(y_true == 1)
  n_neg <- length(y_true) - n_pos
  auc <- (sum(r[y_true == 1]) - n_pos * (n_pos + 1) /2) / (n_pos * n_neg)
  return(auc)
}

#' Calculate accuracy score.
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
accuracy_score <- function(y_true, y_pred) {
  return((y_true == y_pred) / length(y_true))
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
average_precision_score <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
brier_score <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
classification_report <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
confusion_matrix <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
f1_score <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
fbeta_score <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
hamming_loss <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
hinge_loss <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
jaccard_similarity_score <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
log_loss <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
matthews_corrcoef <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
precision_recall_curve <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
precision_recall_fscore_support <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
precision_score <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
recall_score <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
roc_auc_score <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
roc_curve <- function(y_true, y_pred) {
  return(TRUE)
}

#' TO BE EDITED
#'
#' @param y_true Ground truth (correct) target values.
#' @param y_pred Estimated target values.
#' @return  TO BE EDITED.
#' @family classification metrics
#' @export
zero_one_loss <- function(y_true, y_pred) {
  return(TRUE)
}

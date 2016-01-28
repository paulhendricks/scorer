# metrics.accuracy_score(y_true, y_pred[, ...]) 	Accuracy classification score.
# metrics.auc(x, y[, reorder]) 	Compute Area Under the Curve (AUC) using the trapezoidal rule
# metrics.average_precision_score(y_true, y_score) 	Compute average precision (AP) from prediction scores
# metrics.brier_score_loss(y_true, y_prob[, ...]) 	Compute the Brier score.
# metrics.classification_report(y_true, y_pred) 	Build a text report showing the main classification metrics
# metrics.confusion_matrix(y_true, y_pred[, ...]) 	Compute confusion matrix to evaluate the accuracy of a classification
# metrics.f1_score(y_true, y_pred[, labels, ...]) 	Compute the F1 score, also known as balanced F-score or F-measure
# metrics.fbeta_score(y_true, y_pred, beta[, ...]) 	Compute the F-beta score
# metrics.hamming_loss(y_true, y_pred[, classes]) 	Compute the average Hamming loss.
# metrics.hinge_loss(y_true, pred_decision[, ...]) 	Average hinge loss (non-regularized)
# metrics.jaccard_similarity_score(y_true, y_pred) 	Jaccard similarity coefficient score
# metrics.log_loss(y_true, y_pred[, eps, ...]) 	Log loss, aka logistic loss or cross-entropy loss.
# metrics.matthews_corrcoef(y_true, y_pred) 	Compute the Matthews correlation coefficient (MCC) for binary classes
# metrics.precision_recall_curve(y_true, ...) 	Compute precision-recall pairs for different probability thresholds
# metrics.precision_recall_fscore_support(...) 	Compute precision, recall, F-measure and support for each class
# metrics.precision_score(y_true, y_pred[, ...]) 	Compute the precision
# metrics.recall_score(y_true, y_pred[, ...]) 	Compute the recall
# metrics.roc_auc_score(y_true, y_score[, ...]) 	Compute Area Under the Curve (AUC) from prediction scores
# metrics.roc_curve(y_true, y_score[, ...]) 	Compute Receiver operating characteristic (ROC)
# metrics.zero_one_loss(y_true, y_pred[, ...]) 	Zero-one classification loss.
# metrics.brier_score_loss(y_true, y_prob[, ...]) 	Compute the Brier score.

#' Calculate area under the curve between actual and forecast.
#'
#' \code{auc} calculates the area under the curve.
#'
#' @param actual A binary numeric vector of actuals.
#' @param forecast A binary numeric vector of forecasts.
#' @return  A numeric vector of length one.
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

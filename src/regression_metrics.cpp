#include <Rcpp.h>
using namespace Rcpp;

//' Calculate absolute error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
//' @export
// [[Rcpp::export]]
NumericVector absolute_error(NumericVector y_true, NumericVector y_pred) {
   return abs(y_true - y_pred);
}

//' Calculate percent error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
//' @export
// [[Rcpp::export]]
NumericVector percent_error(NumericVector y_true, NumericVector y_pred) {
  return (y_true - y_pred) / y_true;
}

//' Calculate absolute percent error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
//' @export
// [[Rcpp::export]]
NumericVector absolute_percent_error(NumericVector y_true, NumericVector y_pred) {
  return abs(percent_error(y_true = y_true, y_pred = y_pred));
}

//' Calculate squared error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length equal to \code{max(length(y_true), length(y_pred))}.
//' @export
// [[Rcpp::export]]
NumericVector squared_error(NumericVector y_true, NumericVector y_pred) {
  return pow((y_true - y_pred), 2);
}

//' Calculate mean error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double mean_error(NumericVector y_true, NumericVector y_pred) {
  return mean((y_true - y_pred));
}

//' Calculate mean absolute error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double mean_absolute_error(NumericVector y_true, NumericVector y_pred) {
  return mean(absolute_error(y_true = y_true, y_pred = y_pred));
}

//' Calculate mean percent error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double mean_percent_error(NumericVector y_true, NumericVector y_pred) {
  return mean(percent_error(y_true = y_true, y_pred = y_pred));
}

//' Calculate mean squared error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double mean_squared_error(NumericVector y_true, NumericVector y_pred) {
  return mean(squared_error(y_true = y_true, y_pred = y_pred));
}

//' Calculate mean absolute percent error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double mean_absolute_percent_error(NumericVector y_true, NumericVector y_pred) {
  return mean(absolute_percent_error(y_true = y_true, y_pred = y_pred));
}

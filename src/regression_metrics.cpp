#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double median_rcpp(NumericVector x) {
  NumericVector y = clone(x);
  int n, half;
  double y1, y2;
  n = y.size();
  half = n / 2;
  if(n % 2 == 1) {
    // median for odd length vector
    std::nth_element(y.begin(), y.begin()+half, y.end());
    return y[half];
  } else {
    // median for even length vector
    std::nth_element(y.begin(), y.begin()+half, y.end());
    y1 = y[half];
    std::nth_element(y.begin(), y.begin()+half-1, y.begin()+half);
    y2 = y[half-1];
    return (y1 + y2) / 2.0;
  }
}

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

//' Calculate median absolute error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double median_absolute_error(NumericVector y_true, NumericVector y_pred) {
  return median_rcpp(absolute_error(y_true = y_true, y_pred = y_pred));
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

//' Calculate median percent error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double median_percent_error(NumericVector y_true, NumericVector y_pred) {
  return median_rcpp(percent_error(y_true = y_true, y_pred = y_pred));
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

//' Calculate median squared error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double median_squared_error(NumericVector y_true, NumericVector y_pred) {
  return median_rcpp(squared_error(y_true = y_true, y_pred = y_pred));
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

//' Calculate median absolute percent error regression loss.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double median_absolute_percent_error(NumericVector y_true, NumericVector y_pred) {
  return median_rcpp(absolute_percent_error(y_true = y_true, y_pred = y_pred));
}

//' Calculate R^2 (coefficient of determination) regression score function.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double r2_score(NumericVector y_true, NumericVector y_pred) {
  return sum(pow((y_pred - mean(y_true)), 2)) / sum(pow((y_true - mean(y_true)), 2));
}

//' Calculate total variance regression score function.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double total_variance_score(NumericVector y_true, NumericVector y_pred) {
  return sum(pow((y_true - mean(y_true)), 2));
}

//' Calculate explained variance regression score function.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double explained_variance_score(NumericVector y_true, NumericVector y_pred) {
  return sum(pow((y_pred - mean(y_true)), 2));
}

//' Calculate unexplained variance regression score function.
//'
//' @param y_true Ground truth (correct) target values.
//' @param y_pred Estimated target values.
//' @return  A numeric vector of length one.
//' @export
// [[Rcpp::export]]
double unexplained_variance_score(NumericVector y_true, NumericVector y_pred) {
  return sum(pow((y_true - y_pred), 2));
}

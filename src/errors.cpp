#include <Rcpp.h>
using namespace Rcpp;

//' Calculate error between actual and forecast.
//'
//' \code{e} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual.
//'
//' @param actual A numeric vector of actuals.
//' @param forecast A numeric vector of forecasts.
//' @return  A numeric vector of errors.
//' @examples
//' # Examples
//' e(1:100, 100:1)
//' @export
// [[Rcpp::export]]
NumericVector e(NumericVector actual, NumericVector forecast) {
   return actual - forecast;
}

//' Calculate absolute error between actual and forecast.
//'
//' \code{ae} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual and
//' then the absolute value is taken of those errors.
//'
//' @param actual a numeric vector of actuals.
//' @param forecast a numeric vector of forecasts.
//' @return  a numeric vector of absolute errors.
//' @examples
//' # Examples
//' ae(1:100, 100:1)
//' @export
// [[Rcpp::export]]
NumericVector ae(NumericVector actual, NumericVector forecast) {
   return abs(e(actual, forecast));
}

//' Calculate mean absolute error between actual and forecast.
//'
//' \code{mae} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual, the
//' absolute value is taken of those errors, and lastly, the mean is
//' taken of those absolute erros.
//'
//' @param actual a numeric vector of actuals.
//' @param forecast a numeric vector of forecasts.
//' @return  a numeric vector of length one representing the mean of absolute errors.
//' @examples
//' # Examples
//' mae(1:100, 100:1)
//' @export
// [[Rcpp::export]]
double mae(NumericVector actual, NumericVector forecast) {
   return mean(abs(e(actual, forecast)));
}

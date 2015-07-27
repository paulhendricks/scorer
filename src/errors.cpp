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

//' Calculate classification error between actual and forecast.
//'
//' \code{e} takes actual and forecast numeric vectors and returns the
//' classification error.
//'
//' @param actual A numeric vector of actuals.
//' @param forecast A numeric vector of forecasts.
//' @return  A numeric vector of errors.
//' @examples
//' # Examples
//' ce(1:100, 100:1)
//' @export
// [[Rcpp::export]]
double ce(NumericVector actual, NumericVector forecast) {
   return sum(actual == forecast) / actual.size();
}

//' Calculate absolute error between actual and forecast.
//'
//' \code{ae} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual and
//' then the absolute value is taken of those errors.
//'
//' @param actual A numeric vector of actuals.
//' @param forecast A numeric vector of forecasts.
//' @return  A numeric vector of absolute errors.
//' @examples
//' # Examples
//' ae(1:100, 100:1)
//' @export
// [[Rcpp::export]]
NumericVector ae(NumericVector actual, NumericVector forecast) {
   return abs(e(actual, forecast));
}

//' Calculate percent error between actual and forecast.
//'
//' \code{pe} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual and
//' then those errors are divided by the actuals.
//'
//' @param actual A numeric vector of actuals.
//' @param forecast A numeric vector of forecasts.
//' @return  A numeric vector of percent errors.
//' @examples
//' # Examples
//' pe(1:100, 100:1)
//' @export
// [[Rcpp::export]]
NumericVector pe(NumericVector actual, NumericVector forecast) {
   return e(actual, forecast) / actual;
}

//' Calculate absolute percent error between actual and forecast.
//'
//' \code{pe} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual and
//' then those errors are divided by the actuals. Lastly, the
//' absolute value of those percent errors are taken.
//'
//' @param actual A numeric vector of actuals.
//' @param forecast A numeric vector of forecasts.
//' @return  A numeric vector of absolute percent errors.
//' @examples
//' # Examples
//' ape(1:100, 100:1)
//' @export
// [[Rcpp::export]]
NumericVector ape(NumericVector actual, NumericVector forecast) {
   return abs(pe(actual, forecast));
}

//' Calculate mean absolute error between actual and forecast.
//'
//' \code{mae} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual, the
//' absolute value is taken of those errors, and lastly, the mean is
//' taken of those absolute erros.
//'
//' @param actual A numeric vector of actuals.
//' @param forecast A numeric vector of forecasts.
//' @return  A numeric vector of length one representing the mean of absolute errors.
//' @examples
//' # Examples
//' mae(1:100, 100:1)
//' @export
// [[Rcpp::export]]
double mae(NumericVector actual, NumericVector forecast) {
   return mean(abs(e(actual, forecast)));
}

//' Calculate mean absolute percent error between actual and forecast.
//'
//' \code{mape} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual and
//' then those errors are divided by the actuals, the
//' absolute value of those percent errors are then taken, and lastly,
//' the mean of those absolute percent errors are taken.
//'
//' @param actual A numeric vector of actuals.
//' @param forecast A numeric vector of forecasts.
//' @return  A numeric vector of length one: the mean of of absolute percent errors.
//' @examples
//' # Examples
//' mape(1:100, 100:1)
//' @export
// [[Rcpp::export]]
double mape(NumericVector actual, NumericVector forecast) {
   return mean(ape(actual, forecast));
}

//' Calculate root mean squared error.
//'
//' \code{rmse} takes actual and forecast numeric vectors and returns a
//' numeric vector where forecast is subtracted from the actual,
//' the errors are then squared, the average of those squared error is
//' taken, and lastly, the root taken of that mean squared error value.
//'
//' @param actual A numeric vector of actuals.
//' @param forecast A numeric vector of forecasts.
//' @return  A numeric vector of length one: the root mean square of errors.
//' # Examples
//' rmse(1:100, 100:1)
//' @export
// [[Rcpp::export]]
double rmse(NumericVector actual, NumericVector forecast) {
   return sqrt(mean(pow(e(actual, forecast), 2)));
}


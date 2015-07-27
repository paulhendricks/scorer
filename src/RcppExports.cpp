// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// e
NumericVector e(NumericVector actual, NumericVector forecast);
RcppExport SEXP scorer_e(SEXP actualSEXP, SEXP forecastSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type actual(actualSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type forecast(forecastSEXP);
    __result = Rcpp::wrap(e(actual, forecast));
    return __result;
END_RCPP
}
// ce
double ce(NumericVector actual, NumericVector forecast);
RcppExport SEXP scorer_ce(SEXP actualSEXP, SEXP forecastSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type actual(actualSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type forecast(forecastSEXP);
    __result = Rcpp::wrap(ce(actual, forecast));
    return __result;
END_RCPP
}
// ae
NumericVector ae(NumericVector actual, NumericVector forecast);
RcppExport SEXP scorer_ae(SEXP actualSEXP, SEXP forecastSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type actual(actualSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type forecast(forecastSEXP);
    __result = Rcpp::wrap(ae(actual, forecast));
    return __result;
END_RCPP
}
// pe
NumericVector pe(NumericVector actual, NumericVector forecast);
RcppExport SEXP scorer_pe(SEXP actualSEXP, SEXP forecastSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type actual(actualSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type forecast(forecastSEXP);
    __result = Rcpp::wrap(pe(actual, forecast));
    return __result;
END_RCPP
}
// ape
NumericVector ape(NumericVector actual, NumericVector forecast);
RcppExport SEXP scorer_ape(SEXP actualSEXP, SEXP forecastSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type actual(actualSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type forecast(forecastSEXP);
    __result = Rcpp::wrap(ape(actual, forecast));
    return __result;
END_RCPP
}
// mae
double mae(NumericVector actual, NumericVector forecast);
RcppExport SEXP scorer_mae(SEXP actualSEXP, SEXP forecastSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type actual(actualSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type forecast(forecastSEXP);
    __result = Rcpp::wrap(mae(actual, forecast));
    return __result;
END_RCPP
}
// mape
double mape(NumericVector actual, NumericVector forecast);
RcppExport SEXP scorer_mape(SEXP actualSEXP, SEXP forecastSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type actual(actualSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type forecast(forecastSEXP);
    __result = Rcpp::wrap(mape(actual, forecast));
    return __result;
END_RCPP
}
// rmse
double rmse(NumericVector actual, NumericVector forecast);
RcppExport SEXP scorer_rmse(SEXP actualSEXP, SEXP forecastSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type actual(actualSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type forecast(forecastSEXP);
    __result = Rcpp::wrap(rmse(actual, forecast));
    return __result;
END_RCPP
}

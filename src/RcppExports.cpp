// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// median_rcpp
double median_rcpp(NumericVector x);
RcppExport SEXP scorer_median_rcpp(SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type x(xSEXP);
    __result = Rcpp::wrap(median_rcpp(x));
    return __result;
END_RCPP
}
// absolute_error_rcpp
NumericVector absolute_error_rcpp(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_absolute_error_rcpp(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(absolute_error_rcpp(y_true, y_pred));
    return __result;
END_RCPP
}
// percent_error_rcpp
NumericVector percent_error_rcpp(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_percent_error_rcpp(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(percent_error_rcpp(y_true, y_pred));
    return __result;
END_RCPP
}
// absolute_percent_error
NumericVector absolute_percent_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_absolute_percent_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(absolute_percent_error(y_true, y_pred));
    return __result;
END_RCPP
}
// squared_error
NumericVector squared_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_squared_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(squared_error(y_true, y_pred));
    return __result;
END_RCPP
}
// mean_error
double mean_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_mean_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(mean_error(y_true, y_pred));
    return __result;
END_RCPP
}
// mean_absolute_error
double mean_absolute_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_mean_absolute_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(mean_absolute_error(y_true, y_pred));
    return __result;
END_RCPP
}
// median_absolute_error
double median_absolute_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_median_absolute_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(median_absolute_error(y_true, y_pred));
    return __result;
END_RCPP
}
// mean_percent_error
double mean_percent_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_mean_percent_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(mean_percent_error(y_true, y_pred));
    return __result;
END_RCPP
}
// median_percent_error
double median_percent_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_median_percent_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(median_percent_error(y_true, y_pred));
    return __result;
END_RCPP
}
// mean_squared_error
double mean_squared_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_mean_squared_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(mean_squared_error(y_true, y_pred));
    return __result;
END_RCPP
}
// median_squared_error
double median_squared_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_median_squared_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(median_squared_error(y_true, y_pred));
    return __result;
END_RCPP
}
// mean_absolute_percent_error
double mean_absolute_percent_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_mean_absolute_percent_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(mean_absolute_percent_error(y_true, y_pred));
    return __result;
END_RCPP
}
// median_absolute_percent_error
double median_absolute_percent_error(NumericVector y_true, NumericVector y_pred);
RcppExport SEXP scorer_median_absolute_percent_error(SEXP y_trueSEXP, SEXP y_predSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type y_true(y_trueSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y_pred(y_predSEXP);
    __result = Rcpp::wrap(median_absolute_percent_error(y_true, y_pred));
    return __result;
END_RCPP
}

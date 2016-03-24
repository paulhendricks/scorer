## News

### scorer 0.3.0

#### Improvements

* Implemented functions for classification metrics.
* Implemented unit tests for regression metrics.
* Implemented unit tests for classification metrics.
* Changed base R dependency so it works with older versions of R.

### scorer 0.2.0

#### Improvements

* All functions from scorer 0.1.0 have been deprecated in favor of a new API that mirrors the API of [sklearn.metrics](http://scikit-learn.org/stable/modules/classes.html#sklearn-metrics-metrics). These functions will be removed in 1.0.0.
* Added more functions!
* Nearly all functions implemented in C++ for blazing fast speed!
* Additional features such as sample weighting for some error metrics have been identified and placed on a backburner for future releases.
* Implemented unit tests for base functions.

### scorer 0.1.0

#### Improvements

* Implemented several functions for estimating errors.
* Implemented unit tests for nearly all functions.
* First minor version release to CRAN!
  
#### Bug fixes

* Fixed minor error in passing multiple arguments to `mae()`.

<!-- README.md is generated from README.Rmd. Please edit that file -->
scorer
======

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/scorer)](http://cran.r-project.org/package=scorer) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/scorer)](http://cran.rstudio.com/package=scorer) [![Build Status](https://travis-ci.org/paulhendricks/scorer.png?branch=master)](https://travis-ci.org/paulhendricks/scorer) [![Build status](https://ci.appveyor.com/api/projects/status/vuumrc0607xa44q9/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/scorer/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/scorer/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/scorer?branch=master) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`scorer` is a set of tools for quickly scoring models in data science and machine learning. This toolset is written in C++, where possible, for blazing fast performance. The following scoring metrics are implemented in `scorer`:

-   MAPE
-   sMAPE
-   AUC
-   RMSE
-   More...

Installation
------------

You can install:

-   the latest released version from CRAN with

    [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/scorer)](http://cran.r-project.org/package=scorer)

    ``` r
    install.packages("scorer")
    ```

-   the latest development version from github with

    [![GitHub version](https://badge.fury.io/gh/paulhendricks%2Fscorer.svg)](http://badge.fury.io/gh/paulhendricks%2Fscorer)

    ``` r
    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }
    devtools::install_github("paulhendricks/scorer")
    ```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/paulhendricks/scorer/issues).

API
---

``` r
library(dplyr, warn.conflicts = FALSE)
library(scorer)

e(1:10, 10:1)
#>  [1] -9 -7 -5 -3 -1  1  3  5  7  9
```

People
------

-   The original author of `describer` is [Paul Hendricks](https://github.com/paulhendricks). [![Gratipay](https://img.shields.io/gratipay/JSFiddle.svg)](https://gratipay.com/~paulhendricks/)

-   The lead maintainer of `describer` is [Paul Hendricks](https://github.com/paulhendricks). [![Gratipay](https://img.shields.io/gratipay/JSFiddle.svg)](https://gratipay.com/~paulhendricks/)

License
-------

[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/paulhendricks/scorer/blob/master/LICENSE)

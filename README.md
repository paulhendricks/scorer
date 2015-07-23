<!-- README.md is generated from README.Rmd. Please edit that file -->
scorer
======

[![Build Status](https://travis-ci.org/paulhendricks/scorer.png?branch=master)](https://travis-ci.org/paulhendricks/scorer) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/scorer)](http://cran.r-project.org/package=scorer) [![codecov.io](http://codecov.io/github/paulhendricks/scorer/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/scorer?branch=master) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/scorer)](http://cran.rstudio.com/package=scorer)

scorer is a set of tools for quickly scoring models in data analysis and data science. This toolset is written in C++ for blazing fast performance.

You can install:

-   the latest released version from CRAN with

    ``` r
    install.packages("scorer")
    ```

-   the latest development version from github with

    ``` r
    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }
    devtools::install_github("paulhendricks/scorer")
    ```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/paulhendricks/scorer/issues).

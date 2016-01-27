<!-- README.md is generated from README.Rmd. Please edit that file -->
scorer
======

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active) [![R Version 3.1.2+](https://img.shields.io/badge/R%20Version-3.1.2+-blue.svg)](https://img.shields.io/badge/R%20Version-3.1.2+-blue.svg) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/scorer)](http://cran.r-project.org/package=scorer) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/scorer)](http://cran.rstudio.com/package=scorer) [![Build Status](https://travis-ci.org/paulhendricks/scorer.png?branch=master)](https://travis-ci.org/paulhendricks/scorer) [![Build status](https://ci.appveyor.com/api/projects/status/vuumrc0607xa44q9/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/scorer/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/scorer/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/scorer?branch=master)

`scorer` is a set of tools for quickly scoring models in data science and machine learning. This toolset is written in C++, where possible, for blazing fast performance. The API follows that of [sklearn.metrics](http://scikit-learn.org/stable/modules/classes.html#sklearn-metrics-metrics) as much as possible. The following scoring types of metrics are implemented in `scorer`:

-   Regression metrics
-   Classification metrics
-   Multilabel ranking metrics
-   Clustering metrics
-   Biclustering metrics
-   Pairwise metrics

Installation
------------

You can install:

-   the latest released version from CRAN with

    [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/scorer)](http://cran.r-project.org/package=scorer)

    ``` r
    install.packages("scorer")
    ```

-   the latest development version from github with

    [![Github\_Status\_Badge](https://img.shields.io/badge/Github-0.2.0.9000-brightgreen.svg)](https://img.shields.io/badge/Github-0.2.0.9000-brightgreen.svg)

    ``` r
    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }
    devtools::install_github("paulhendricks/scorer")
    ```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/paulhendricks/scorer/issues).

API
---

### Load library and data

``` r
library("scorer")
packageVersion("scorer")
#> [1] '0.2.0.9000'
data(mtcars)
set.seed(1)
```

### Visualize data

``` r
library("ggplot2")
ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point() + 
  geom_smooth(method = 'lm')
```

![](inst/imgs/README-unnamed-chunk-3-1.png)

### Partition data into train and test sets

``` r
mask <- (runif(nrow(mtcars), 0, 1) <= 0.8)
train_mtcars <- mtcars[mask, ]
test_mtcars <- mtcars[!mask, ]
```

### Build model on train data set

``` r
model <- lm(mpg ~ wt, data = train_mtcars)
```

### Forecast model using the test data set

``` r
test_mtcars[, "predicted_mpg"] <- predict(model, newdata = test_mtcars)
```

### Score model using various metrics

``` r
scorer::mean_absolute_error(test_mtcars[, "mpg"], test_mtcars[, "predicted_mpg"])
#> [1] 3.393153
scorer::mean_squared_error(test_mtcars[, "mpg"], test_mtcars[, "predicted_mpg"])
#> [1] 15.99442
scorer::r2_score(test_mtcars[, "mpg"], test_mtcars[, "predicted_mpg"])
#> [1] 0.2054869
scorer::total_variance_score(test_mtcars[, "mpg"], test_mtcars[, "predicted_mpg"])
#> [1] 209.6683
scorer::explained_variance_score(test_mtcars[, "mpg"], test_mtcars[, "predicted_mpg"])
#> [1] 43.08409
scorer::unexplained_variance_score(test_mtcars[, "mpg"], test_mtcars[, "predicted_mpg"])
#> [1] 95.96655
```

People
------

-   The original author of `describer` is [Paul Hendricks](https://github.com/paulhendricks). [![Gratipay](https://img.shields.io/gratipay/JSFiddle.svg)](https://gratipay.com/~paulhendricks/)

-   The lead maintainer of `describer` is [Paul Hendricks](https://github.com/paulhendricks). [![Gratipay](https://img.shields.io/gratipay/JSFiddle.svg)](https://gratipay.com/~paulhendricks/)

License
-------

[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/paulhendricks/scorer/blob/master/LICENSE)

Session Information
-------------------

``` r
sessionInfo()
#> R version 3.2.3 (2015-12-10)
#> Platform: x86_64-apple-darwin13.4.0 (64-bit)
#> Running under: OS X 10.11.3 (El Capitan)
#> 
#> locale:
#> [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> other attached packages:
#> [1] ggplot2_2.0.0     scorer_0.2.0.9000
#> 
#> loaded via a namespace (and not attached):
#>  [1] Rcpp_0.12.3      digest_0.6.9     plyr_1.8.3       grid_3.2.3      
#>  [5] gtable_0.1.2     formatR_1.2.1    magrittr_1.5     evaluate_0.8    
#>  [9] scales_0.3.0     stringi_1.0-1    rmarkdown_0.8.1  labeling_0.3    
#> [13] tools_3.2.3      stringr_1.0.0    munsell_0.4.2    yaml_2.1.13     
#> [17] colorspace_1.2-6 htmltools_0.2.6  knitr_1.12
```

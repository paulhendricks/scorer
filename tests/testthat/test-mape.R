library(scorer)
context("mape()")

n <- 10000
x <- 1:n
test_that("mape() produces correct output.", {
  expect_equal(mape(x, x), 0)
})

test_that("mape() produces correct output types.", {
  expect_is(mape(runif(n), runif(n)), "numeric")
})

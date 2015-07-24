library(scorer)
context("mape()")

n <- 10000
x <- 1:n
test_that("mape() produces correct output.", {
  expect_equal(mape(x, x), 0)
  expect_equal(mape(0, 1), Inf)
  expect_equal(mape(1, 0), 1)
})

test_that("mape() produces correct output types.", {
  expect_is(mape(runif(n), runif(n)), "numeric")
})

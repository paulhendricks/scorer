library(scorer)
context("rmse()")

n <- 10000
x <- 1:n
test_that("rmse() produces correct output.", {
  expect_equal(rmse(x, x), 0)
  expect_equal(rmse(0, 1), 1)
  expect_equal(rmse(1, 0), 1)
})

test_that("rmse() produces correct output types.", {
  expect_is(rmse(runif(n), runif(n)), "numeric")
})

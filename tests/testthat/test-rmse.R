library(scorer)
context("rmse()")

n <- 10000
x <- 1:n
test_that("rmse() produces correct output.", {
  expect_equal(rmse(x, x), 0)
  expect_equal(rmse(0, 1), 1)
  expect_equal(rmse(1, 0), 1)
  expect_equal(rmse(2, 0), 2)
  expect_equal(rmse(0, 2), 2)
  expect_equal(rmse(FALSE, TRUE), 1)
  expect_equal(rmse(TRUE, FALSE), 1)
})

test_that("rmse() produces correct output types.", {
  expect_is(rmse(runif(n), runif(n)), "numeric")
})

test_that("rmse() raises correct errors.", {
  expect_error(rmse("a", "b"))
})

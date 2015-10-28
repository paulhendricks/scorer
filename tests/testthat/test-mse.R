library(scorer)
context("mse()")

n <- 10000
x <- 1:n
test_that("mse() produces correct output.", {
  expect_equal(mse(x, x), 0)
  expect_equal(mse(0, 1), 1)
  expect_equal(mse(1, 0), 1)
  expect_equal(mse(FALSE, TRUE), 1)
  expect_equal(mse(TRUE, FALSE), 1)
})

test_that("mse() produces correct output types.", {
  expect_is(mse(runif(n), runif(n)), "numeric")
})

test_that("mse() raises correct errors.", {
  expect_error(mse("a", "b"))
})

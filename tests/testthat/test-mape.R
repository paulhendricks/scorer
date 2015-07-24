library(scorer)
context("mape()")

n <- 10000
x <- 1:n
test_that("mape() produces correct output.", {
  expect_equal(mape(x, x), 0)
  expect_equal(mape(0, 1), Inf)
  expect_equal(mape(1, 0), 1)
  expect_equal(mae(FALSE, TRUE), 1)
  expect_equal(mae(TRUE, FALSE), 1)
})

test_that("mape() produces correct output types.", {
  expect_is(mape(runif(n), runif(n)), "numeric")
})

test_that("mape() raises correct errors.", {
  expect_error(mape("a", "b"))
})

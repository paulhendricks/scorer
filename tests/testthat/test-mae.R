library(scorer)
context("mae()")

n <- 10000
x <- 1:n
test_that("mae() produces correct output.", {
  expect_equal(mae(x, x), 0)
  expect_equal(mae(0, 1), 1)
  expect_equal(mae(1, 0), 1)
  expect_equal(mae(FALSE, TRUE), 1)
  expect_equal(mae(TRUE, FALSE), 1)
})

test_that("mae() produces correct output types.", {
  expect_is(mae(runif(n), runif(n)), "numeric")
})

test_that("mae() raises correct errors.", {
  expect_error(mae("a", "b"))
})

library(scorer)
context("e()")

n <- 10000
x <- 1:n
test_that("e() produces correct output.", {
  expect_equal(e(x, x), rep(0, n))
  expect_equal(e(0, 1), -1)
  expect_equal(e(1, 0), 1)
  expect_equal(e(FALSE, TRUE), -1)
  expect_equal(e(TRUE, FALSE), 1)
})

test_that("e() produces correct output types.", {
  expect_is(e(runif(n), runif(n)), "numeric")
})

test_that("e() raises correct errors.", {
  expect_error(e("a", "b"))
})

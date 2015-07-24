library(scorer)
context("e()")

n <- 10000
x <- 1:n
test_that("e() produces correct output.", {
  expect_equal(e(x, x), rep(0, n))
  expect_equal(e(0, 1), -1)
  expect_equal(e(1, 0), 1)
})

test_that("e() produces correct output types.", {
  expect_is(e(runif(n), runif(n)), "numeric")
})

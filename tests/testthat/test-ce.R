library(scorer)
context("ce()")

n <- 10000
x <- 1:n
test_that("ce() produces correct output.", {
  expect_equal(ce(1, 1), 1)
  expect_equal(ce(2, 2), 1)
  expect_equal(ce(0, 1), 0)
  expect_equal(ce(1, 0), 0)
  expect_equal(ce(x, x), 1)
})

test_that("ce() produces correct output types.", {
  expect_is(ce(runif(n), runif(n)), "numeric")
})

test_that("ce() raises correct errors.", {
  expect_error(ce(mean, mean))
})

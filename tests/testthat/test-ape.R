library(scorer)
context("ape()")

n <- 10000
x <- 1:n
test_that("ape() produces correct output.", {
  expect_equal(ape(x, x), rep(0, n))
  expect_equal(ape(0, 1), Inf)
  expect_equal(ape(1, 0), 1)
})

test_that("ape() produces correct output types.", {
  expect_is(ape(runif(n), runif(n)), "numeric")
})

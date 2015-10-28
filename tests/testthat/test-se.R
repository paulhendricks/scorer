library(scorer)
context("se()")

n <- 10000
x <- 1:n
test_that("se() produces correct output.", {
  expect_equal(se(x, x), rep(0, n))
  expect_equal(se(0, 1), 1)
  expect_equal(se(1, 0), 1)
  expect_equal(se(FALSE, TRUE), 1)
  expect_equal(se(TRUE, FALSE), 1)
})

test_that("se() produces correct output types.", {
  expect_is(se(runif(n), runif(n)), "numeric")
})

test_that("se() raises correct errors.", {
  expect_error(se("a", "b"))
})

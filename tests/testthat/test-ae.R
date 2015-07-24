library(scorer)
context("ae()")

n <- 10000
x <- 1:n
test_that("ae() produces correct output.", {
  expect_equal(ae(x, x), rep(0, n))
  expect_equal(ae(0, 1), 1)
  expect_equal(ae(1, 0), 1)
  expect_equal(ae(FALSE, TRUE), 1)
  expect_equal(ae(TRUE, FALSE), 1)
})

test_that("ae() produces correct output types.", {
  expect_is(ae(runif(n), runif(n)), "numeric")
})

test_that("ae() raises correct errors.", {
  expect_error(ae("a", "b"))
})

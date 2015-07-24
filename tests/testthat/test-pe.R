library(scorer)
context("pe()")

n <- 10000
x <- 1:n
test_that("pe() produces correct output.", {
  expect_equal(pe(x, x), rep(0, n))
  expect_equal(pe(0, 1), -Inf)
  expect_equal(pe(1, 0), 1)
  expect_equal(pe(FALSE, TRUE), -Inf)
  expect_equal(pe(TRUE, FALSE), 1)
})

test_that("pe() produces correct output types.", {
  expect_is(pe(runif(n), runif(n)), "numeric")
})

test_that("pe() raises correct errors.", {
  expect_error(pe("a", "b"))
})


library(scorer)
context("auc()")

x <- rbinom(100, size = 1, prob = 0.5)
y <- rbinom(100, size = 1, prob = 0.5)
test_that("auc() produces correct output.", {
  expect_equal(auc(x, x), 1)
  expect_equal(auc(0L, 1L), NaN)
  expect_equal(auc(1L, 0L), NaN)
})

test_that("auc() produces correct output types.", {
  expect_is(auc(x, y), "numeric")
})

test_that("auc() raises correct errors.", {
  expect_error(auc("a", "b"))
})

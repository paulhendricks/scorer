library(scorer)
context("classification")

y_true = c(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)
y_pred = c(1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1)

# total_population
test_that("", {
  expect_equal(total_population(y_true, y_pred), 16)
})

# true_positive
test_that("", {
  expect_equal(true_positive(y_true, y_pred), 4)
})

# true_negative
test_that("", {
  expect_equal(true_negative(y_true, y_pred), 4)
})

# false_positive
test_that("", {
  expect_equal(false_positive(y_true, y_pred), 4)
})

# false_negative
test_that("", {
  expect_equal(false_negative(y_true, y_pred), 4)
})

# condition_positive
test_that("", {
  expect_equal(condition_positive(y_true, y_pred), 8)
})

# condition_negative
test_that("", {
  expect_equal(condition_negative(y_true, y_pred), 8)
})

# predicted_condition_positive
test_that("", {
  expect_equal(predicted_condition_positive(y_true, y_pred), 8)
})

# predicted_condition_negative
test_that("", {
  expect_equal(predicted_condition_negative(y_true, y_pred), 8)
})

# accuracy_score
# accuracy
test_that("", {
  expect_equal(accuracy_score(y_true, y_pred), 0.5)
  expect_equal(accuracy(y_true, y_pred), 0.5)
})

# prevalence
test_that("", {
  expect_equal(accuracy(y_true, y_pred), 0.5)
})

# positive_predictive_value
# precision
test_that("", {
  expect_equal(positive_predictive_value(y_true, y_pred), 0.5)
  expect_equal(precision(y_true, y_pred), 0.5)
})

# false_discovery_rate
test_that("", {
  expect_equal(false_discovery_rate(y_true, y_pred), 0.5)
})

# negative_predictive_value
test_that("", {
  expect_equal(negative_predictive_value(y_true, y_pred), 0.5)
})

# false_omission_rate
test_that("", {
  expect_equal(false_omission_rate(y_true, y_pred), 0.5)
})

# true_positive_rate
# sensitivity
# recall
test_that("", {
  expect_equal(positive_predictive_value(y_true, y_pred), 0.5)
  expect_equal(precision(y_true, y_pred), 0.5)
})

# false_positive_rate
test_that("", {
  expect_equal(false_positive_rate(y_true, y_pred), 0.5)
})

# false_negative_rate
test_that("", {
  expect_equal(false_negative_rate(y_true, y_pred), 0.5)
})

# true_negative_rate
# specificity
test_that("", {
  expect_equal(true_negative_rate(y_true, y_pred), 0.5)
  expect_equal(specificity(y_true, y_pred), 0.5)
})

# positive_likelihood_ratio
test_that("", {
  expect_equal(positive_likelihood_ratio(y_true, y_pred), 1.0)
})

# negative_likelihood_ratio
test_that("", {
  expect_equal(negative_likelihood_ratio(y_true, y_pred), 1.0)
})

# diagnostic_odds_ratio
test_that("", {
  expect_equal(diagnostic_odds_ratio(y_true, y_pred), 1.0)
})

# f1_score
test_that("", {
  expect_equal(f1_score(y_true, y_pred), 0.5)
})

# matthews_corrcoef
test_that("", {
  expect_equal(matthews_corrcoef(y_true, y_pred), 0.0)
})

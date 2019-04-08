context("Just testing printer functionality")

test_that("Whether printer gives the same output", {

  set.seed(1)
  res = printer(x = rnorm(5), r = rnorm(5))

  expect_equal(nrow(res), 5)

  cm = colMeans(res)
  expect_equal(cm, c(x = 0.129269895004571, r = 0.135135667587365))
})
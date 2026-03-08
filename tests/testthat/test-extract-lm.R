context("extract_lm")

test_that("extract_lm validates scalar inputs", {
  df <- data.frame(y = 1:5, x = 2:6, z = 3:7)

  expect_error(
    extract_lm(parameter = c("y", "z"), algorithm = "x", df = df),
    "expects exactly one `parameter` and one `algorithm`"
  )
  expect_error(
    extract_lm(parameter = "y", algorithm = c("x", "z"), df = df),
    "expects exactly one `parameter` and one `algorithm`"
  )
})

test_that("extract_lm_cv validates scalar inputs before caret dependency", {
  df <- data.frame(y = 1:5, x = 2:6, z = 3:7)

  expect_error(
    extract_lm_cv(parameter = c("y", "z"), algorithm = "x", df = df),
    "expects exactly one `parameter` and one `algorithm`"
  )
})

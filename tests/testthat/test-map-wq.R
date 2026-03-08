context("Map_WQ_raster")

test_that("Map_WQ_raster exposes a palette argument", {
  expect_true("palette" %in% names(formals(Map_WQ_raster)))
  expect_equal(as.character(formals(Map_WQ_raster)$palette), "viridis")
})

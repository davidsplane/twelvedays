#
#
test_that("testing a single case of turning string into plural form", {

  x <- "durkio"
  y <- "durkios"

  plural <- pluralize_gift(x)

  expect_equal(plural, y)


  xx <- "murky"
  yy <- "murkies"

  plural2 <- pluralize_gift(xx)

  expect_equal(plural2, yy)

})

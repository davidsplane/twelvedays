#
#
test_that("testing output for make_phrase function", {

  x <- "five stupid idiots fighting in mcdonalds"

  y <- make_phrase(
    num = 5,
    num_word = "five",
    adjective = "stupid",
    item = "idiot",
    verb = "fighting",
    location = "in mcdonalds"
  ) %>% as.character()

  expect_equal(x, y)

})

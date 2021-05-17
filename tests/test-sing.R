#
#
test_that("testing to see if function sings decently", {

  x <- read.csv("https://www.dropbox.com/s/e584pryn8evm1gz/xmas.csv?dl=1") %>%
    mutate(
      Full.phrase = make_phrase(num = Day,
                                num_word = Day,
                                item = Gift.Item,
                                verb = Verb,
                                adjective = Adjective,
                                location = Location)
    )

  y <- "On the first day of Christmas, my true love sent to me, 1  partridges  in a pear tree"

  z <- sing_day(x, 1, Full.phrase)

  expect_equal(as.character(z), y)

})

#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(dataset, line, phrase_col){

  phrases <- dataset %>% pull({{phrase_col}})

  day_words <- dataset$Day.in.Words

  first_line <- str_glue("On the {day_words} day of Christmas, my true love sent to me,")

  linesup <- sapply(
    1:line,
    function(x) str_glue("{first_line[x]}
                         {phrases[x:1]}")
  )

  return (linesup)



}

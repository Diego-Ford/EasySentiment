
#' get_sentiments
#'
#' @param text
#' @param lexicon
#'
#' @return a table containg the word tokens and their sentiment
#' @export
#'
#' @examples
#' example_strings <- c("I am really angry right now", "I am very very happy", "Rage and mixed feelings", "i lied")
#' example_sentiments <- get_sentiments(example_strings, "bing")
get_sentiments <- function(text, lexicon) {
  library(dplyr)
  text <- text

  if(tolower(lexicon) %in% c("bing", "afinn", "nrc", "loughran")) {
    sentiments <- tidytext::get_sentiments(lexicon)
  } else {
    stop("An invalid sentiment lexicon was selected")
  }

  # Tokenize
  text <- data.frame(text)
  text <- text %>%
    dplyr::mutate(indexes = dplyr::row_number())

  colnames(text) <- c("text", "indexes")
  text_tokens <- text %>%
    tidytext::unnest_tokens(output = word, input = text, token = "words")

  text_sentiments <- text_tokens %>%
    dplyr::inner_join(sentiments)

  return(text_sentiments)
}

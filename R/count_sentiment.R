
#' Get counts of the sentiments in your dataset
#'
#' @param data
#'
#' @return a table containing the counts of the sentiments in your data
#' @export
#'
#' @examples
#' counted_sentiments <- count_sentiment(example_data$sentiments)
count_sentiment <- function(data){
  result <- table(data)
  return(result)
}


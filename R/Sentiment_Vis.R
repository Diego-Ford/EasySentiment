
#' Sentiment_Vis
#'
#' @param sentiments
#' @param index
#' @param vis_type
#' @param words
#'
#' @return
#' @export
#'
#' @examples
#' plot <- sentiment_vis(example_sentiments$sentiment, example_sentiments$indexes, vis_type = "sentiment_hist")
#' plot
sentiment_vis <- function(sentiments, words = NA, index, vis_type){
  library(ggplot2)
  data <- data.frame(index, sentiments)

  #get counts of sentiments
  if(vis_type == "sentiment_hist"){
    data <- data %>%
      group_by(index, sentiments) %>%
      count()

    plot <- ggplot2::ggplot(data, ggplot2::aes(x = as.factor(index), y = n)) +
              ggplot2::geom_col(ggplot2::aes(fill = as.factor(sentiments)), position = "dodge") +
              ggplot2::labs(xlab = "indexes", ylab = "sentiments", fill = "sentiment")

  }
  if(vis_type == "word_hist"){
    data <- data %>%
      group_by(index, words) %>%
      count()

    plot <- ggplot2::ggplot(data, ggplot2::aes(x = as.factor(index), y = n)) +
              ggplot2::geom_col(ggplot2::aes(fill = as.factor(words)), position = "dodge") +
              ggplot2::labs(xlab = "indexes", ylab = "sentiments", fill = "sentiment")
  }
  return(plot)
}


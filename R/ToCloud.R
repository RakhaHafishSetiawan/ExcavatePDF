ToCloud = function(DTM) {
  if (!require("wordcloud"))
    install.packages("wordcloud")
  library(wordcloud, quietly = TRUE)

  library(wordcloud)

  value <<- readline(prompt = "Enter Amount of Top Occurences ")
  value <<- as.integer(value)

  height <<- readline(prompt = "Enter Wordcloud Height ")
  height <<- as.integer(height)

  width <<- readline(prompt = "Enter Wordcloud Width ")
  width <<- as.integer(width)

  wordcloud(head(names(DTM), value), head(DTM, value), scale = c(height, width))
}

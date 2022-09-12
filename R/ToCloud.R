ToCloud = function(occurences) {

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

  wordcloud(head(names(occurences), value), head(occurences, value), scale = c(height, width))
}

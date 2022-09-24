FrameAndMatrix = function(Insert_Directory) {

  if (!require("tm"))
    install.packages("tm")
  library(tm, quietly = TRUE)

  if (!require("dplyr"))
    install.packages("dplyr")
  library(dplyr, quietly = TRUE)

  if (!require("pdftools"))
    install.packages("pdftools")
  library(pdftools, quietly = TRUE)

  if (!require("dplyr"))
    install.packages("dplyr")
  library(dplyr, quietly = TRUE)

  library(tm)
  library(pdftools)
  library(dplyr)

  text <- pdf_text(Insert_Directory)

  textCorpus <<- Corpus(VectorSource(text))

  textCorpus <<- tm_map(textCorpus, tolower)
  textCorpus <<- tm_map(textCorpus, removePunctuation)
  textCorpus <<- tm_map(textCorpus, stripWhitespace)
  textCorpus <<- tm_map(textCorpus, removeNumbers)
  textCorpus <<- tm_map(textCorpus, removeWords, stopwords("en"))


  DTM <<- DocumentTermMatrix(textCorpus)
  DTM <<- as.matrix(DTM)
  DTM <<- t(DTM)

  occurences <<- rowSums(DTM)
  occurences <<- sort(occurences, decreasing = TRUE)

  DTF <<- data.frame(names(occurences), occurences)

  View(DTF)
  View(occurences)

  print("The data frame and data matrix has been stored in your global environment as DTF and occurences")

}

FrameAndMatrix = function(Directory, Language) {
  if (!require("tm"))
    install.packages("tm")
  library(tm, quietly = TRUE)

  if (!require("magrittr"))
    install.packages("magrittr")
  library(magrittr, quietly = TRUE)

  if (!require("pdftools"))
    install.packages("pdftools")
  library(pdftools, quietly = TRUE)

  library(tm)
  library(pdftools)
  library(magrittr)

  textCorpus <- Corpus(VectorSource(pdf_text(Directory))) %>%
    tm_map(tolower) %>%
    tm_map(removePunctuation) %>%
    tm_map(stripWhitespace) %>%
    tm_map(removeNumbers)

  decision <<- readline(prompt = "English or not? ")

  if (decision == "English") {
    textCorpus <- tm_map(textCorpus, removeWords, stopwords("en"))
  } else {
    textCorpus <- tm_map(textCorpus, removeWords, stopwords(Language))
  }

  DTM <<- textCorpus %>%
    DocumentTermMatrix() %>%
    as.matrix() %>%
    t() %>%
    rowSums() %>%
    sort(decreasing = TRUE)

  DTF <<- data.frame(names(DTM), DTM)

  View(DTF)
  View(DTM)
}

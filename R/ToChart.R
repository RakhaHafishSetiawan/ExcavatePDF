ToChart  = function(DTF){

  if (!require("dplyr"))
    install.packages("dplyr")
  library(dplyr, quietly = TRUE)

  if (!require("magrittr"))
    install.packages("magrittr")
  library(magrittr, quietly = TRUE)

  if (!require("ggplot2"))
    install.packages("ggplot2")
  library(ggplot2, quietly = TRUE)

  library(dplyr)
  library(magrittr)
  library(ggplot2)

  agree <<- readline(prompt = "Would you like to add colors? (yes or no) ")

  if(agree == "no") {

    amount <<- readline(prompt = "Enter Amount of Top Occurences ")
    amount <<- as.integer(amount)

    DTF %>%
      select(everything()) %>%
      head(amount) %>%
      ggplot(aes(names.DTM., DTM)) +
      geom_col() +
      labs(x = "Terms",
           y = "Frequencies") +
      theme_classic()

  } else {

    choice <<- readline(prompt = "What color would you like to add? ")

    amount <<- readline(prompt = "Enter Amount of Top Occurences ")
    amount <<- as.integer(amount)

    DTF %>%
      select(everything()) %>%
      head(amount) %>%
      ggplot(aes(names.DTM., DTM)) +
      geom_col(fill = choice) +
      labs(x = "Terms",
           y = "Frequencies") +
      theme_classic()

  }


}

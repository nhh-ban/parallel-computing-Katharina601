#Timer.r
#######

#This file sources the files for solving the problems with methods 1-3 and use tictoc to time them.

#Load necessary packages
library(tictoc)

printTicTocLog <-
  function() {
    tic.log() %>%
      unlist %>%
      tibble(logvals = .) %>%
      separate(logvals,
               sep = ":",
               into = c("Function type", "log")) %>%
      mutate(log = str_trim(log)) %>%
      separate(log,
               sep = " ",
               into = c("Seconds"),
               extra = "drop")
  }

tic.clearlog()


#Method 1

tic("(1)")
source("hw4_solution_method1.r")

toc(log = TRUE)

#Method 2

tic("(2)")
source("hw4_solution_method2.r")

toc(log = TRUE)

#Method 3

tic("(3)")
source("hw4_solution_method3.r")

toc(log = TRUE)



printTicTocLog() %>% 
  knitr::kable()
## code to prepare `DATASET` dataset goes here

usethis::use_data(DATASET, overwrite = TRUE)

count <- read.csv('count.csv', row.names = 1)
devtools::use_data(count)

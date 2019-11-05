library(dplyr)
library(ggplot2)

rm(list = ls())

df <- read.csv("train.csv")

set.seed("12345")

train_index <- sample(nrow(df), 0.8 * nrow(df))

validate_index <- setdiff(1:nrow(df), train_index)

train <- df[train_index, ]

val <- df[validate_index, ]




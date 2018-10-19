.libPaths("D:/NRES 800/RLibrary")
library(tidyverse)
source("R/themes.R")

fish <- read_csv("https://raw.githubusercontent.com/ewood127/git-tutorial/master/data/Gaeta_etal_CLC_data.csv")


fish %>%
  mutate(length_cat= if_else(length >= 300, "big", "small"))-> fish2

         
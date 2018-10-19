.libPaths("D:/NRES 800/RLibrary")
library(tidyverse)
source("R/themes.R")

fish <- read_csv("https://raw.githubusercontent.com/ewood127/git-tutorial/master/data/Gaeta_etal_CLC_data.csv")


fish %>%
  mutate(length_cat= if_else(length >= 300, "big", "small"))-> fish2

fish2 %>% 
  ggplot()+
  geom_histogram(aes(scalelength, fill= length_cat))+
  facet_wrap(~length_cat, nrow= 1)+
         theme_pres()



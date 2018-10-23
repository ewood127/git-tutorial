.libPaths("D:/NRES 800/RLibrary")
library(tidyverse)
source("R/themes.R")

fish <- read_csv("https://raw.githubusercontent.com/ewood127/git-tutorial/master/data/Gaeta_etal_CLC_data.csv")
fish <- read_csv("data/Gaeta_etal_CLC_data.csv")

fish %>%
  mutate(length_cat= if_else(length >= 300, "big", "small"))-> fish2

fish2 %>% 
  ggplot()+
  geom_histogram(aes(scalelength, fill= length_cat))+
  facet_wrap(~length_cat, nrow= 1)+
         theme_pres()


## Chris's modifications

ggplot() +
  geom_histogram(data = fish2, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_pres() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))

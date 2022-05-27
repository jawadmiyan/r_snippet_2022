library(tidyverse)

mpg
mpg %>% names()
mpg %>% glimpse()
mpg %>% dim()
mpg %>% str()
mpg %>% View()

mpg %>% 
  group_by(trans) %>% 
  summarise(n = n())

mpg %>% 
  group_by(trans) %>% 
  summarise(n = n(),
  across(c(where(is.numeric), -year), mean))




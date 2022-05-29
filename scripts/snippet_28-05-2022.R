library(tidyverse)
library(palmerpenguins)

penguins
penguins %>% names()
penguins %>% View()
penguins %>% glimpse()

penguins %>% 
  count(species, island, .drop = FALSE)

penguins %>% 
  group_by(species, island) %>% 
  count()

penguins %>% 
  group_by(species, island) %>% 
  count() %>% 
  complete(species, island)

penguins %>% 
  group_by(species, island) %>% 
  count() %>% 
  ungroup() %>% 
  complete(species, island)

penguins %>% 
  group_by(species, island) %>% 
  count() %>% 
  ungroup() %>% 
  complete(species, island, fill = list(n = 0))

penguins %>% 
  group_by(species, island) %>% 
  count() %>% 
  ungroup() %>% 
  complete(species, island, fill = list(n = "No such penguins here"))


# How many characters

nchar(123456)
nchar(700000)
nchar("700000")
nchar(as.character(700000))
as.character(700000)
format(700000)
format(700000, scientific = FALSE)
nchar(format(700000, scientific = FALSE))


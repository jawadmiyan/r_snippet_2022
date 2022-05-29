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


library(ggplot2)
library(ggtext)

ggplot(iris) +
  geom_point(aes(x = Sepal.Length, y = Petal.Length)) +
  facet_wrap(~ Species) +
  theme(
    strip.text = element_textbox(
    size = 12,
    color = "white", fill = "skyblue", box.color = "black",
    halign = 0.5, linetype = 1, r = unit(5, "pt"), width = unit(1, "npc"), 
    padding = margin(2,0,1,0), margin = margin(3,3,3,3)
  )
)


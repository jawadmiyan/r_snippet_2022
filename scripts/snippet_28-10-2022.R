
# Olakunle4impact
# While Loop, Break and Next statement in R 
# https://www.youtube.com/watch?v=JEYsje_DTKE

# Shortcut for multi-line comment in R
# CTRL + SHIFT + C

# while(test condition){
#   statement
# }

a <- 65

while(a < 70){
  a <- a + 2
  print(a)
}

a <- 65

while(a < 70){
    print(a)
    a <- a + 2
}

a <- 60

while(a < 70){
  print(a)
  a <- a + 2
  if(a == 68){
    break
  }
}


a <- 60

while(a < 70){
  if(a == 68){
    break
  }
  print(a)
  a <- a + 2
}

# For-loop

a <- c(1:6)

for(num in a){
  print(num)
}


for(num in a){
  if(num == 4){
    break
  }
  print(num)
}


for(num in a){
  if(num == 4){
    next
  }
  print(num)
}

# Basic application of 'For-Loop' in R

?trees
head(trees)

dat <- trees
dat$Girth

gt <- sample(dat$Girth, 5)
print(gt)

for(i in gt){
  gt_c <- i/100
  print(gt_c)
}

gc <- numeric(0)

for(i in 1:length(gt)){
  Gt_c <- gt[i]/100
  gc[i] <- Gt_c
}
print(gc)

gc <- numeric(0)

for(i in 1:length(dat$Girth)){
  gCONV <- dat$Girth[i]/100
  gc[i] <- gCONV
}
print(gc)

dat$Gt_CV <- gc
species <- c("gmelina", "tectona", "terminalia")
dat$Species <-rep(species, each = 10, length.out = 31)

str(dat)
str(dat$Species)
dat$Species <- as.factor(dat$Species)
str(dat$Species)
dat$Height
dat$Ht_mask <- character(31)

for(i in 1:nrow(dat)){
  if(dat$Height[i] %% 2 == 0){
    dat$Ht_mask[i] = "even"
  } else dat$Ht_mask[i] = "odd"
}

dat$gg <- ifelse(dat$Height %% 2 == 0, "even", "odd")

for(i in 1:nrow(dat)){
  if(dat$Height[i] %% 2 == 0){
    dat$Ht_Mask[i] = "even"
  } else{
dat$Ht_Mask[i] = "odd"
 }
}

library(ggplot2)

ggplot(dat,
       aes(x = Gt_CV, y = Species, fill = Species))+
  geom_col()+
  labs(x = "Girth (cm)",
       y = "Species",
       title = "Barplot of Girth against Species",
       caption = "olakunle4impact Videos")+
  theme_bw()+
  scale_x_continuous(expand = expansion(mult = c(0, 0.1)))



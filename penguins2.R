library(tidyverse)
library(palmerpenguins)
library(ggthemes)

ggplot(penguins, aes(x = fct_infreq(species))) +
  geom_bar()
  
ggplot(penguins, aes(x=body_mass_g)) +
  geom_histogram(binwidth=200)

ggplot(penguins, aes(x = body_mass_g)) +
  geom_density()

#1.4 Exercise 1
ggplot(data = penguins, mapping= aes(y=species)) +
  geom_bar()

#1.4 Exercise 2
#change border color
ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")
# change inner color
ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")

#1.4 Exercise 3
#bins --> number of bars in histogram
ggplot(data = penguins, mapping = aes(x=body_mass_g)) +
  geom_histogram(bins=10)

#1.4 Exercise 4
ggplot(data=diamonds, mapping=aes(y=carat)) +
  geom_histogram(binwidth=0.1)



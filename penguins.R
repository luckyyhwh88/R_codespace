library(tidyverse)
library(palmerpenguins)
library(ggthemes)

ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + geom_point()

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  )

#1.2 Exercise 5
ggplot(data = penguins, mapping = aes(y=species, x= bill_depth_mm)) + geom_line()

#1.2 Exercise 7
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species",
    caption = "Data come from the palmerpenguins package"
  )



#1.2 Exercise 8
ggplot(data = penguins, 
       mapping = aes(x=flipper_length_mm, y=body_mass_g)) + 
  geom_point(aes(color = bill_depth_mm)) + 
  geom_smooth()

#1.2 Exercise 9 --> we have color=island as global, so we get three different geom smooth
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

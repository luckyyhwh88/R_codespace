ggplot(penguins, aes(x = species, y = body_mass_g)) +
  geom_boxplot()

ggplot(penguins, aes(x=body_mass_g, color=species, fill=species)) +
  geom_density(alpha=0.5)

ggplot(penguins, aes(x=island, fill=species)) + 
  geom_bar(position="fill")

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = island))

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species)) +
  facet_wrap(~island)

#1.5 Exercise 5
ggplot(penguins, aes(x=bill_depth_mm, y=bill_length_mm)) +
  geom_point(aes(color=species))
ggplot(penguins, aes(x=bill_depth_mm, y=bill_length_mm)) +
  geom_point(aes(color=species)) +
  facet_wrap(~island)

#1.5 Exercise 6
ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species
  )
) +
  geom_point()


#1.5 Exercise 7
  ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")
ggplot(penguins, aes(x = species, fill = island)) +
  geom_bar(position = "fill")



#1.6
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()
ggsave(filename = "penguin-plot.png")


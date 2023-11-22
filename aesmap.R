library(tidyverse)
mpg

ggplot(mpg, aes(x= displ, y= hwy)) +
  geom_point(aes(color = class))

ggplot(mpg, aes(x= displ, y= hwy)) +
  geom_point(aes(shape = class))

ggplot(mpg, aes(x= displ, y= hwy)) +
  geom_point(aes(alpha = class))

ggplot(mpg, aes(x= displ, y= hwy)) +
  geom_point(aes(size = class))

#9.2 exercise 1
ggplot(mpg, aes(x= displ, y= hwy)) +
  geom_point(color ="pink", shape = 17)

#9.2 exercise 2
ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy),color = "blue")

#9.2 exercise 3
ggplot(mpg, aes(x= displ, y= hwy)) +
  geom_point(aes(color = class), stroke = 2)


ggplot(mpg, aes(x= displ, y= hwy)) +
  geom_point(aes(color = displ < 5), stroke = 2)

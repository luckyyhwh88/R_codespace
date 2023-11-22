# Left
ggplot(mpg, aes(x = displ, y = hwy, shape = drv)) + 
  geom_point()

# Right
ggplot(mpg, aes(x = displ, y = hwy, linetype= drv)) + 
  geom_smooth(se)
ggplot(mpg, aes(x = displ, y = hwy)) + 
geom_point() + 
  geom_point(
    data = mpg |> filter(class == "2seater"), 
    color = "red"
  ) +
  geom_point(
    data = mpg |> filter(class == "2seater"), 
    shape = "circle open", size = 3, color = "red"
  )

library(ggridges)

ggplot(mpg, aes(x = hwy, y = drv, fill = drv, color = drv)) +
  geom_density_ridges(alpha = 0.5, show.legend = FALSE)
#> Picking joint bandwidth of 1.28


#9.3 exercise 4
ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point(size=2)+
  geom_smooth(se=FALSE)

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point(size=2)+
  geom_smooth(aes(group= drv), se=FALSE)

ggplot(mpg, aes(x=displ, y=hwy, color = drv)) +
  geom_point(size=2)+
  geom_smooth(aes(group= drv), se=FALSE)

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point(size=2, aes(color=drv))+
  geom_smooth( se=FALSE)

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point(size=2, aes(color=drv))+
  geom_smooth(aes(linetype=drv),se=FALSE)

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point(size=2, aes(color=drv))+
  geom_point(shape = "circle open", size=4, color = "white")

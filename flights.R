library(nycflights13)
library(tidyverse)

flights |> 
  filter(dep_delay>120)

flights |>
  filter(month %in% seq(1:3))

flights |> 
  distinct(origin, dest)

#3.2 Exercise 1 
flights |> 
  filter(arr_delay>=120) |>
  filter(dest %in% c("IAH", "HOU")) |>
  filter(carrier %in% c("UA", "DL", "AA")) |> 
  filter(month %in% seq(7:9)) |>
  filter(arr_delay>120 && dep_delay<=0) |>
  filter(dep_delay>60 && dep_delay-arr_delay>30)
flights |>
  group_by(month)

flights |>
  group_by(month) |>
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE)
  )

flights |>
  group_by(month) |>
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE),
    n = n()
  )

flights |>
  group_by(dest) |>
  slice_max(arr_delay, n = 1) |>
  relocate(dest, arr_delay) |>
  arrange(desc(arr_delay))

daily <- flights |>
  group_by(year, month, day)
daily


daily_flights <- daily |>
  summarize(n = n())
daily_flights


daily_flights <- daily |>
  summarize(
    n = n(),
    .groups = "keep"
  )
daily_flights


daily |>
  ungroup() |>
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE),
    flights = n()
  )

flights |>
  summarize(
    delay = mean(dep_delay, na.rm = TRUE),
    n = n(),
    .by = month
  )

flights |>
  summarize(
    delay = mean(dep_delay, na.rm = TRUE),
    n = n(),
    .by = c(origin, dest)
  )


flights |>
  relocate(origin, dest) |>
  filter(origin == "EWR" & dest == "BDL")



# Exercise ----------------------------------------------------------------


# 3.5 Exercise 1
flights |>
  group_by(carrier) |>
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE),
    n = n()
  ) |>
  arrange(desc(avg_delay))

# 3.5 Exercise 2
flights |>
  relocate(dest, dep_delay, .after = day) |>
  group_by(dest) |>
  slice_max(dep_delay) |>
  arrange(desc(dep_delay))

df <- tibble(
  x = 1:5,
  y = c("a", "b", "a", "a", "b"),
  z = c("K", "K", "L", "L", "K")
)
df |>
  group_by(y)



flights |>
  filter(!is.na(arr_delay), !is.na(tailnum)) |>
  count(dest)

flights |>
  filter(dest == "IAH") |>
  group_by(year, month, day) |>
  summarize(
    n = n(),
    delay = mean(arr_delay, na.rm = TRUE)
  ) |>
  filter(n > 10)

flights |>
  filter(carrier == "UA", dest %in% c("IAH", "HOU"), sched_dep_time >
    0900, sched_arr_time < 2000) |>
  group_by(flight) |>
  summarize(delay = mean(
    arr_delay,
    na.rm = TRUE
  ), cancelled = sum(is.na(arr_delay)), n = n()) |>
  filter(n > 10)

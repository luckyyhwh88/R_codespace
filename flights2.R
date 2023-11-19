flights |>
  mutate(
    gain=dep_delay-arr_delay,
    .after =4
  )

flights |> 
  select(where(is.character))


flights |>
  relocate(time_hour, air_time, dest, .after=day)


#3.3 Exercise 1
flights |> 
  select(dep_time, sched_dep_time, dep_delay)

#3.3 Exercise 2
flights |> 
  select(dep_time, sched_dep_time, dep_time)


#3.3 Exercise 4
variables <- c("year", "month", "day", "dep_delay", "arr_delay")
flights |>
  select(any_of(variables))

#3.3 Exercise 5
flights |> select(contains("time", ignore.case = FALSE))

#3.3 Exercise 6
flights |>
  rename(air_time_min = air_time) |>
  relocate(air_time_min)

#3.3 Exercise 7
flights |> 
  select(tailnum) |> 
  arrange(arr_delay)
# because you selected tailnum in first filter, so there is no column with arr_delay

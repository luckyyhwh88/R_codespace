table1 |> 
  mutate(rate = cases/population * 1000)

table1 |> 
  group_by(year) |> 
  summarize(total_cases = sum(cases))

ggplot(table1, aes(x=year, y= cases)) + 
  geom_point(aes(color = country, shape = country)) + 
  geom_line(aes(group=country),color = "grey50") +
  scale_x_continuous(breaks=c(1999,2000))



billboard_longer <- billboard |> 
  pivot_longer(
    cols = starts_with("wk"), # specify columns need to be pivoted
    names_to = "week", # name the variable stored in the column names
    values_to = "rank", # name the variable stored in cell value
    values_drop_na = TRUE
  ) |> 
  mutate(
    week = parse_number(week)
  )

  ggplot(billboard_longer, aes(x=week, y=rank, group=track)) +
  geom_line(alpha=0.25) +
  scale_y_reverse()

  
  who2 |> 
    pivot_longer(
      cols = !c(country, year),
      names_to = c("diagnosis", "sex", "age"), 
      names_sep = "_",
      values_to = "count"
    )
  
  household |> 
    pivot_longer(
      cols = !family,
      names_to = c(".value", "child"),
      names_sep = "_",
      values_drop_na = TRUE
    )
  
  df <- tribble(
    ~id,  ~bp1, ~bp2,
    "A",  100,  120,
    "B",  140,  115,
    "C",  120,  125
  )
df |> 
  pivot_longer( 
    cols = !id,
    names_to = "measurement",
    values_to = "bp"
    )


cms_patient_experience |> 
  pivot_wider(
    id_cols=starts_with("org"), 
    names_from = measure_cd, 
    values_from = prf_rate
  )


students <- tribble(
  ~name, ~score,
  "David", 100)
students

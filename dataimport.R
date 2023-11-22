library(tidyverse)
students <- read_csv("https://pos.it/r4ds-students-csv")
students
students <- read_csv("https://pos.it/r4ds-students-csv", na = c("N/A", ""))


students <- students |>  rename(
  student_id = 'Student ID',
  full_name = 'Full Name',
  favourite_food = favourite.food,
  meal_plan = mealPlan,
  age = AGE
)

students <- students |> 
  mutate(meal_plan = factor(meal_plan)) |> 
  mutate(age = parse_number(if_else(age == "five", "5", age)))

sales_files <- c(
  "https://pos.it/r4ds-01-sales",
  "https://pos.it/r4ds-02-sales",
  "https://pos.it/r4ds-03-sales"
)
read_csv(sales_files, id = "file")


write_csv(students, "students.csv")
read_csv("students.csv")

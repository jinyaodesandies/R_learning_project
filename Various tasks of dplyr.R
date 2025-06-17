flights|>
  arrange(dep_time)
#earliest flight
flights|>
  arrange(desc(dep_delay))
#worse departure delay
flights |>
  arrange(desc(distance/air_time))
#fastest flights
flights |>
  distinct(month, day)
#Yes there was flights every day because the tibble has 365 month, day distinct rows

flights |>
  arrange(desc(distance))
#most distance

flights |>
  arrange(distance)
#least distance


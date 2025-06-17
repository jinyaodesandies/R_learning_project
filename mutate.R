flights |>
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance/air_time,
    .before= 1,
    #can choose which variable to be before or after w/ .after
    .keep = "used"
    #can decide which to keep, either by specifying or choosing used
  )




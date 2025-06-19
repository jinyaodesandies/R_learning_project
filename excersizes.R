df <- tibble(
  x = 1:5,
  y = c("a", "b", "a", "a", "b"),
  z = c("K", "K", "L", "L", "K")
)

df |> 
  arrange(y)
#sorts
df |> 
  group_by(y,z) |> 
  summarize(mean_x = mean(x))
#also sorts but also influences future analysis
df |> 
  group_by(y,z) |> 
  summarize(mean_x = mean(x), .groups = "drop")
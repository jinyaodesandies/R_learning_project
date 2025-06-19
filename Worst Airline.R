delays <-  flights |> 
  
  mutate(
    dest= dest,
    delay = dep_delay,
    carrier = carrier,
    .keep = "none",
  )|>
  slice_max(by = dest, delay, n = -10) |> 
  relocate(dest)

ggplot(data = delays)+
  geom_bar(aes(x = carrier, fill = dest),show.legend = FALSE)


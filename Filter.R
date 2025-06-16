worst <- flights |>
  filter(dep_delay>=120)|>

ggplot(data = worst)+
  geom_bar(aes(x= carrier, fill = carrier))
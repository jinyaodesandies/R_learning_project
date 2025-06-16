worst <- flights |>
  filter(dep_delay>=120& month == 12 & day %in% c(20,21,22,23,24))

ggplot(data = worst)+
  geom_bar(aes(x= carrier, fill = carrier))
#ExpressJet Airlines Inc. stole christmas as discovered through "airline"
nz <-map_data("")

ggplot(nz, aes(long, lat, group = group))+
  geom_polygon(fill = "white", color = "black")+
  coord_quickmap()
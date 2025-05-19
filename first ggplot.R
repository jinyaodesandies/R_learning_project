ggplot(data= mpg)+
  geom_point(mapping= aes(x = displ, y= hwy))+
  facet_grid(cyl~class)
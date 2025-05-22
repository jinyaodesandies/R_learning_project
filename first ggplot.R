ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv), show_legend = TRUE) + 
  geom_point(mapping = aes())+
  geom_smooth(mapping = aes(group = drv), se= FALSE)
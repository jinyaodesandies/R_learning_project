my_bar_plot <- ggplot(mpg, aes(x=class))+
  geom_bar()
my_scatter_plot <- ggplot(mpg, aes(x=cty, y =hwy))+
  geom_point()
ggsave(filename = 'mpg_plot.png', plot = my_bar_plot)

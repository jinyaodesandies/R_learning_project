bar <- ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut, fill = cut),
           show.legend = FALSE,
           width = 1)+
  theme(aspect.ratio = 1)+
  labs(x=NULL, y= NULL)

bar+coord_polar()+labs(title="bars")
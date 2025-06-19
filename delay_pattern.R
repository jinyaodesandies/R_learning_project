#How do delays vary over the course of the day? Illustrate your answer with a plot.
ggplot(data = flights)+
  geom_point(aes(x= dep_time, y = dep_delay))
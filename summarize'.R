delay_by_month <- flights |> 
  group_by(month) |> 
  summarize(avg_delay= mean(dep_delay, na.rm = TRUE), n = n())
# n is number of rows, na.rm ignores NA values in certain rows

#ggplot(data = delay_by_month)+
#  geom_col(aes(x= month, y = avg_delay))

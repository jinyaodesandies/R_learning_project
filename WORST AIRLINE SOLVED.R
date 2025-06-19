daily <- flights |> 
  group_by(year, month,day)
daily
daily_flights <- daily |> 
  summarize(n = n(), 
            .groups= "drop_last"
            )
daily_flights

delay <- daily |> ungroup()  |> 
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE),
    flights = n()
  )

city_delay <- flights |> 
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE),
    flights = n(),
    .by = c(origin, dest)
  ) |> 
  arrange(desc(avg_delay))
city_delay


delays <-  flights |> 
  
  mutate(
    dest= dest,
    delay = dep_delay,
    carrier = carrier,
    .keep = "none",
  )|>
  slice_max(by = dest, delay, n = 10) |> 
  relocate(dest)

ggplot(data = delays)+
  geom_bar(aes(x = carrier, fill = dest),show.legend = FALSE)
  



# bad airlines and bad cities are not necessarily intertwined, and this is evidenced by the fact that a lot of cities have bad airlines


#to prove this hypothesis, I will only select the worst 10 flights in each destination
#then, I will be able to count which airliner appears the most after this slice
#consequently deriving the worst arilines irregardless of airport 
#of course, knowing that the airport region of each airline has bearing over the final result.
# for example, some airlines don't even touch EWR, which may be why they have less delays.
#Nonetheless, many airlines may share the same colors but simply have less delays




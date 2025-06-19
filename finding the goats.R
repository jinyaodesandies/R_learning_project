batters <- Lahman :: Batting |> 
  group_by(playerID) |> 
  summarize(performance = sum(H, na.rm = TRUE)/sum(AB, na.rm = TRUE), n = sum(AB, na.rm = TRUE))
batters |> 
  filter(n > 100) |> 
ggplot(aes(x = n, y = performance))+
  geom_point(alpha = 1/10, position = "jitter")+
  geom_smooth(se = FALSE)

batters |> 
  arrange(desc(performance))

batters |> 
  filter(n>10000, performance > 0.3) |> 
  arrange(desc(performance))
People |> 
  filter(playerID %in% c("speaktr01","ansonca01","musiast01","wagneho01","jeterde01","cabremi01","molitpa01","aaronha01","brettge01","rosepe01","mayswi01")) |> 
  select(birthCity, birthState, nameFirst, nameLast, nameGiven, birthDate, deathYear)
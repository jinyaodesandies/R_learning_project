delay <- flights|>
  filter(dep_delay>120 & month == 12 & day >= 15 & day <= 25)|>
  count(carrier, sort= TRUE)
total <- flights|>
  count(carrier, sort= TRUE)


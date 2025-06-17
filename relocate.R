flights|>
  relocate(year:dep_time, .before = dep_time)
flights|>
  relocate(
    starts_with("arr"), .after = dep_time
  )

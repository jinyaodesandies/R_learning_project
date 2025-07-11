# In a single pipeline for each condition, 
#find all flights that meet the condition:
# Had an arrival delay of two or more hours
# Flew to Houston (IAH or HOU)
# Were operated by United, American, or Delta
# Departed in summer (July, August, and September)
# Arrived more than two hours late but didn’t leave late
# Were delayed by at least an hour, but made up over 30 minutes in flight"""
# the final condition cannot logically be fit into the pipeline to yield any result

flights|>
  filter(arr_delay>=120 , dest %in% c("ISH", "HOU"), month %in% c(7,8,9),  dep_delay < 0 , arr_delay >120 )

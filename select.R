flights|>
  select(year,month,day)
#only these
flights|>
  select(year:day)
#between these (which are same in this case)
flights|>
  select(!year:day)
# ! denotes not this range
flights|>
  select(where(is.character))
#very SQL-like selecting all that is a charecter
#starts with, ends with, contains, num_range
#num_range("x", 1:3): matches x1, x2 and x3. basically columns which end in numbers could be matched

flights|>
  select(tail_num = tailnum)
#rename through =


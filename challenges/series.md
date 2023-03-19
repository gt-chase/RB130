P:
given an series of numbers and a length, return each ordered number of that length

E: the string "01234" has the following 3-digit series:

012
123
234

Rules:
If asked to return x-digit series where x > original string, raise an ArgumentError

class Series
instance method   slices

Algo:
slices instance method
  given a slice length
  
  reps = string.size - (slice length + 1)
  reps.time do slice it from times val (call it ind) 



  either split into chars befor slice or after? split(&:to_i) after**
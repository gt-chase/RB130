compile scrabble score
Given at least one letter, figure out the score of each letter and then sum the total

First thougt is to make a guard clause for empty string and white space.
Then split the string and map over the collection of letters converting each letter to a number then sum the array of integers. 

Data:
Instantiation of a new Scrabble object with a string input
score instnace method
Some sort of collection for letters with values. A hash would be great though could be a pain to build. 
output an integer
An array that lead with a number and then included the rest of the letters. 

E:

Algo:

Class Scrabble
instantiate with string

score = array of array's with letters and a score value as first array value.
upcase the string
split string into array of chars.
  map destructively across chars
    pass in the letter
      select score element that includes the letter
    the letter = the score elements first element.
return sum -  sum of chars that are now integers. 

[1] + %w(A, E, I, O, U, L, N, R, S, T)
  
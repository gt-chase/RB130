  
P: Given a letter, output a diamond that starts with 'A', then 'B'....
where it creats the shape of a diamond. The widest point, is the letter given.

E: 
If 'C' is given, - A is printed once
  A    C is the third letter in the alphabet, A is in the third 'space' has two empty spaces to the left
 B B   Be is one less than C. B is in the second space 
C   C  C has no spaces to the left as given letter. As third Letter, it has 3 spaces between outputs. 
 B B
  A
D: Letter, Array of letters, integer that represents the position of the given array or the array length.

Algo:
make a diamond first
top half:
left_space variable = num - 1
center_space variable = 1

Line 1: is *, the letter is going to make an array and output a number
Line 1 is a '*' with num-1 spaces from the side
Line two is '*' with num-2 spaces from the side plus 1 space until the next '*'
Line three is a '*' with num-3 spaces from the side plus 2 spaces unitl the next '*'

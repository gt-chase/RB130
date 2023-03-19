P: Based on three integers that represent lengths, determine if those lengths make an equalateral, isosceles or scalene triangle. 

E: 
Rules: 
equilateral trialngles have the same length for all three sides 
2, 2, 2 equalateral
Isosceles triangles have two sides of equal lengths
3, 4, 4 isosceles
Scalene triangles have all three sides of different lengths
3, 4, 5 scalene 

Floats okay

Raise Argument
0 length (inputs include a 0)
- num (inputs include a negative number)
The length of the two shorter sides must add up to longer than the third

Data: 
Input is 3 integers
Output is a string or an argument error

Algo:
Triangle class
  Instantiate with three values
  define a `kind` method
  sides = [num1, num2, num3]
  
  Check for:
    is a float present - floats might just work?
    inputs include a 0
    inputs include a negative number
    sort and confirm that ind 0 and ind 1 are greater than ind 2
  Equalateral
    all three values equal?
      num 1 == num2 && num 2 == num 3
      if num1.count == 3
      if true return "equilateral" for triangle.kind
  
  Isosceles
    if num1.count == 2
    or num2.count == 2
      return "isosceles"
  
  Scalene
    inputs.uniq == inputs 

  Raise Argument
    method for include zero
    0 length (inputs include a 0)
    method for include neg num
  - num (inputs include a negative number)
    method for shorter sides
    sides.sort then index locations
    The length of the two shorter sides must add up to longer than the third



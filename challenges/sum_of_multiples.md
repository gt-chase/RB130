Write a program that, given a natural number and a set of one or more other numbers, can find the sum of all the multiples of the numbers in the set that are less than the first number. If the set of numbers is not given, use a default set of 3 and 5.

For instance, if we list all the natural numbers up to, but not including, 20 that are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of these multiples is 78.

P: Given a number, find all the multiples of 3 and 5 between 3 and the given number. Don't include the given number. Don't double count multiples. Return the sum of that collection
  Given 20: 3, 6, 9, 12, 15, 18, 5, 10, (not 15 and not 20)
            sum is 78

Rules:
Don't double count. 
Don't include end of range. 
If given other numbers, use those in place of 3 and 5

Class SumOfMultiples
class method `to`
instance method `to` that takes given values set up during instantiation. Takes 2-3 values

could make an instance method for `to` and then the class method would simply instantiate a new object with 3 and 5, use the end point given. 

Algo:

Create class SumOfMultiples
create initialize method
  how do you make an optional instance variable? Some sort of guard clause. unless nil? Or put them all in a collection and then select! for truethy

`to` instance method accessed instance variables. And the given integer (exlusively as a range)


`to` class method
  instantiates a SumOfMultiples object with 5 and 3 and instance variables

  `to` method functionality
  establish a range from minimum variable through given num exclusive.
  initialize an array called multiples

  for each number in the array, if the number is a multiple of our set of numbers, add it to multiples array. I think I can set this up to not duplicate. If it duplicates, scrub for uniq nums only
  return the sum of the multiples array. 

  How do you check if a number is a mulitple of multiple numbers? Can I use any? 
  range.each do |num|
    multiples << num if [3, 5].any? { |set_num| num % set_num == 0 }      
  end



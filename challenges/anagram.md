Problem:
Write a program that recieves a string.
The program also has a method called `match` that passes in an array of strings
`match` needs to iterate through the array of strings and return an array that has any string 
from the given string that are anagrams of the original string used to ainstantiate the `Anagram` class object.


E:
An `Anagram` object is instantiated with the string "ant" and then `match` is invoked with the array
%w(tan stand at), then an array with a single string object in it 'tan' would be returned.

Input: a string and an array of strings
Output: an array that may have string objects in it from the given array of strings that are anagrams of the original string.
Data: Array, strings

Algo:
`class Anagram`
  instantiate with a string
    set @set to the given string in alphabetical order (not necessarily a real word)

method `match`
  takes an array of string objects.
  set = instance variable that is the instantiated objects word sorted in alphabetical letters.
  result = [] elements of the given array that when the word is sorted alphabetically == @set
    @set and each word, should be compared as all lowercase.
    if original word is the same as the given word, it does not count. 
  Iterate over result, remove words that are == to the initialize word when both are downcase. 
    select words that != given word
  return the result array with any words returned in alphabetical order (use sort) # test actually does this so ignore
  
Prob: Convert a roman numeral to an integer

Rules:
No need to go over 3,000
Starting from the left, write each digit separately, skipping any 0 (This is not clear to me)
I - 1
V - 5
X - 10
L - 50
C - 100
D - 500
M - 1000

From left to Right:
If the next number has a greater number than the current, subtract current number from the preceeding number.
If the next number is less than or equal to the current number, and the next number is great than or equal to number after that, then add the current number to the next number. 

E: CCCLXIX: C + C + C + L + X *** (I subtracted from X, than added to the left)
Data: String input. Strings that have integer values. Probably a hash.
An array that will hold the digits of the string input.
A way to iterate over the array, looking out up to two places. 

RM_VALUES = { I: 1, V: 5, X: 10, L: 50' C: 100, D: 500, M: 1000 }

Algo:
split the given string into an array of letters assign to and array called `chars`
iterate over map agains RM_Values transforming them into their numbers. 
number = 0
ind = 0
Iterate over `characters`
  If chars[ind] < chars[ind + 1]
    then number += chars[ind + 1] - chars[ind]
    ind += 2
  elsif char[ind] > char[ind + 1] && char[ind + 1] < char[ind + 2]
    number += char[ind]
    ind += 1




Actual Problem:
Convert integer into roman numeral

E: 1024 -> 1000 M, 0 _, 20 XX, 4 IV -> MXXIV 

Algo:
Turn integer into string and split to digits. 
Reverse collectiopn of digits.
Iterate over collection of digits and concat ind * 0 to the string num
  unless it is a 0 - then skip it.
  Iterate over the collection again and delete any 0
  reverse the collection again. 

Iterate over the collection again and transform the string nums to RomanNumerals
  { I: 1, V: 5, X: 10, L: 50' C: 100, D: 500, M: 1000 }
  {'1' => 'I', '2' => 'II', '3' => 'III', '4' => 'IV', '5' => 'V', '6' => 'VI', '7' => 'VII', '8' => 'VIII', '9' => 'IX', '10' => 'X', '20' => 'XX', '30' => 'XXX', '40' => 'IL', '50' => 'L',  '60' => 'LX', '70' => 'LXX', '80' => 'LXXX', '90' => 'XC', '100' => 'C' }
Join the roman Numerals. 
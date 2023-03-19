P: Given a number, output if that number is perfect, abundant, or deficient

D: 
input: an integer
output: string (perfect, abundant, or deficient)
integer -> find divisors, excluding the number itself -> sum of divisors will tell what kind of num it is.

Could have guard claus for prime but that might not be needed. 


Algo:
Create class PerfectNumber

issue error if neg number is used

Iterate from 1..given_num/2, shovel the number into collection if current_num%given_num == 0 
sum collection and use conditional to output the correct string.

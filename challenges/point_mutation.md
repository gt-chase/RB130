P: Calculate the Hamming distance. Comparing two strings, evaluate how many occurances there are where the indexed character of one string is different from that of the other string. 
Return that number.

E: 'ACT' and 'GGA' is 3
'GGACTGA' and 'GGACTGA' is zero
Rule: If strings are different length, go with the shorter length for comparison

D:
Input is two strings, Output is an integer

Algo:

class DNA
  initialize with DNA strand
  hamming_distance method takes second DNA strand

Compare the length of the two strings
  look at the length of both strings
    iterations = min of the two strings compared for size
    counter = 0
    iterations times do - 
      counter += 1 if dna_string[num] == comparison_dna[num]
    return counter


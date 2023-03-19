=begin   
P: given a string, covert by ROT-13 'encryption'

E: Ada -> Nqn
Rules: case stays the same. 

D: String -> string of chars -> Each letter has a reference number/letter
Hash of k/v pairs? Manually entering that is probably the best way to solve this. 

A:
Split string into array of chars.
Create two arrays of numbers.
  if the letter is included in arr1, swap it for arr2 at same index
  if it is uppercase? Return as uppercase
    check for uppercase
  else spaces stays space



=end

str = "Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu"

# def swap?(let)
#   let.downcase == let
# end

# def de_code(str)
#   arr1 = ('a'..'m').to_a
#   arr2 = ('n'..'z').to_a

  
#   output = []
#   str.each_char do |letter|
    
#     lower = letter.downcase
#     if arr1.include?(lower)
#       output << arr2[arr1.index(lower)]
#     elsif arr2.include?(lower)
#       output << arr1[arr2.index(lower)]
#     else
#       output << letter
#     end
#   end
#   output.join()
# end

STANDARD_LETTER = ('A'..'Z').to_a + ('a'..'z').to_a

puts de_code(str)
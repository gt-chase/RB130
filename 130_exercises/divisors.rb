# this no longer works! 

def divisors(num)
  results = []
  1.upto(num/2) do |digit| 
    if num%digit == 0
      results << digit
      results << num/digit
    end
  end
  results
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891]
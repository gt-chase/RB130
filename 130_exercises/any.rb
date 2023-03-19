# yield to the argument
# how do you return true, when the argument returns true the first time?
=begin   
P: Identify if an array includes a value, based on a block. 

R:
Return false is array is empty



=end
 # 2/7 solution. Appears to work with hashes as well.

def any?(array)
  return false if array.empty?
  arr = array.select do |ele|
    yield(ele)
  end
  !arr.empty?
end

# LS solution 
# def any?(array)
#   array.each { |ele| return true if yield(ele) }
#   false
# end


p any?([a: 1, b: 3, c: 5, d: 6]) { |pair| pair.select { |_, v| v.even?} } == true
# p any?([a: 1, b: 3, c: 5, d: 7]) { |_, value| value.even? } == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p any?([1, 3, 5, 7]) { |value| true } == true
# p any?([1, 3, 5, 7]) { |value| false } == false
# p any?([]) { |value| true } == false
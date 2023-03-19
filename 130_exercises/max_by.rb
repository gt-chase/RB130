=begin   
given an array, check each element against a block, if the return value of the block is 
the highest yet, then set it to a tracking object

=end

def max_by(arr)
  output = []
  arr.each do |ele|
    if output[0].nil?
      output[0] = ele  
    elsif yield(output[0]) < yield(ele)
      output[0] = ele
    end
  end
  output[0]
end


p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value }  == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 }  == nil
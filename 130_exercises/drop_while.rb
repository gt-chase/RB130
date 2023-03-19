=begin   
iterate over the collection
compare each element against a block's conditions
  When the condition returns nil or false
  return from that location to the end of the collection

My solution does not handel the third test case. I don't really understand why the third
  test case 'should' be and empth array rather than the whole array. Why does the first 
    element not return true?
=end
# does not work!! 2/7/23
def drop_while(arg)
  arg.each_with_index do | ele, ind |
    return arg[ind..-1] unless yield(ele)
  end
  [] # This is the line I missed!! otherwise `each` returns the given collection
end

# LS Solution
# def drop_while(array)
#   index = 0
#   while index < array.size && yield(array[index])
#     index += 1
#   end

#   array[index..-1]
# end

# Carlos solution
# def drop_while(arg, &block)
#   results = []
#   arg.each_with_index do |element, index|
#     if block.call(element)
#       next
#     else
#       results = arg[index..-1]
#       break
#     end
#   end
#   results
# end
p drop_while([1, 3, 5, 6]) { |value| value.odd? }  == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } #== []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []
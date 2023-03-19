# not working 2/7
# def each_cons(array, num)
#   return nil if array.empty?
  
#   ind = 0
#   loop do
#    break if ind + num - 1 >= array.size

#     pair = array[ind, num]
#     yield(pair[0], pair[1..-1])
#     ind += 1
#   end
#   nil
# end

# ls solution
def each_cons(array, n)
  array.each_index do |index|
    break if index + n - 1 >= array.size
    yield(*array[index..(index + n - 1)])
  end
  nil
end


hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash #== { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}
=begin   
Iterate over the collection
  track index
  And be able to do something with the value
  Return value of the block is not used
  Return a reference to the original collection
      What does that mean? I think it means that ir returns the original collection.

    Iterate through each element
      Each element needs to know the index location
=end


def each_with_index(arr)
  ind = 0
  arr.each do |ele|
    yield(ele, ind)
    ind += 1
  end
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
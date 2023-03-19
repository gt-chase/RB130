=begin   
Iterate over the collection by twos
  a pair is two elements
  the first of the pair is value 1 and the second is value 2


=end

def each_cons(array)
  return nil if array.empty?
  
  ind = 0
  loop do
    pair = array[ind, 2]
    yield(pair[0], pair[1])
    ind += 1
    break if ind >= array.size - 1 
  end
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash  == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil
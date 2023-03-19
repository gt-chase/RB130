def reduce(array, acc=array.first)
  array.each do |num|
    acc = yield(acc, num)
  end
  acc
end

array = [1, 2, 3, 4, 5]

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
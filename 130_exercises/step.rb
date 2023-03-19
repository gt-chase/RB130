=begin   
P: From three arguments; starting value, ending value, and step value
And a block that does something to the values evaluated.


=end

def step(first, second, jmp)
  arr = (first..second).to_a
  counter = 0
  loop do
    yield(arr[counter])
    counter += jmp
    break if counter >= arr.size
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }
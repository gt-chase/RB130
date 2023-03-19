def compute(input=nil)
  if block_given?
    yield(input)
  else
    "Does not compute."
  end

end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

p compute('hello') { |x| x.upcase }
p compute([1, 2, 3, 4, 5]) { |x| x.map { |y| y * 3 } }
p compute('5') { |x| x.to_i }
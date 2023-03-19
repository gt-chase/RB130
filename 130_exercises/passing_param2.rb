# raven, finch, *raptors = %w(raven finch hawk eagle)
# p raven # => 'raven'
# p finch # => 'finch'
# p raptors  # => ['hawk','eagle']

=begin   
From an array, yield to a block, and assign from index 2 on, to a local variable 'raptor'

=end

def bird_types(array)
  yield(array)  
end

bird_collection = %w(raven finch hawk eagle)
bird_types(bird_collection) { |_, _, *raptors| puts "Raptors: #{raptors.join(', ')}" }
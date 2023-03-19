thing = (1..7).to_a.each
puts thing.reduce(:*).rewind

# p (1..5).reduce(:*)
items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  yield(items)
end

# puts "Let's start gathering food."
# puts "#{items.join(', ')}"
# puts "Nice selection of food we have gathered!"

# gather(items){ |item| puts "We are gathering #{item.join(', ')}."}
# I pulled too much out in my first pass at this solution. 

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

gather(items){ |item| puts "We are gathering #{item.join(', ')}."}
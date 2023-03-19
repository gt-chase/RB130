=begin   
Given text:
  Read text from another file - I did this in another exercise
  Identify, number of paragraphs
  Identify number of words
  Identify number of lines(This one, I'm not sure about, does the text have to wrap somehow)


  I took the wrong approach here: Come back. Try again. 
=end

# class TextAnalyzer
#   def process
#     # paragraphs
#     p words(yield)
#     p lines(yield)
#   end
  
#   def words(text)
#     text.count(" ")
#   end

#   def lines(text)
#     text.count("\n")+1 # single quotes drastically increases the return value. Over 2.5 times?
#   end
# end

# class TextAnalyzer
#   def process
#     yield
#   end
# end
# book = File.read('sample_text.txt')
book2 = File.read('more_sample_text.txt')


File.open('more_sample_text.txt', 'r') { |text| puts "#{text.read.split(' ').count} words"} #another direct approach
# This skips what the question asks because it does not bake it into a class and a method. 
# more of an experiment
# what are the access modes? 

# analyzer = TextAnalyzer.new
# analyzer.process { puts "#{book2.split(' ').count} words" }
# analyzer.process { puts "#{book2.count("\n")+1} lines" }
# analyzer.process { puts "#{book2.split("\n\n").count} paragraphs"}
# puts "#{book2.split(' ').count} words" # direct attempt
# p book2.split.to_a
# analyzer = TextAnalyzer.new
# analyzer.process { book2 }
# analyzer.process { # your implementation }
# analyzer.process { # your implementation }
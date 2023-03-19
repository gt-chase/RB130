class Anagram
  def initialize(word)
    @word = word
    @set = word.downcase.chars.sort.join
  end

  def match(arr_of_words)
    arr_of_words.select do |ele|
      ele.downcase.chars.sort.join == @set &&
        ele.downcase != word.downcase
    end
  end

  private

  attr_reader :word, :set
end

# on line 4 and 9, `join` can be removed. Maybe it should. But if I had to troubleshot
# I think I would want to see them as a joined word rather than an array of characters.
# does it effect performance in any meaningful way? 

# Alternate body of `match` Might be more clear?
    # result = arr_of_words.select do |word|
    #   word.downcase.chars.sort.join == @set
    # end
    # result.select! do |ele|
    #   ele.downcase != word.downcase
    # end
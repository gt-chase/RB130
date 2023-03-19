require "pry"

class Scrabble
  
  SCORE = [[1, "A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
          [2, "D", "G"], [3, "B", "C", "M", "P"],
          [4, "F", "H", "V", "W,", "Y"], [5, "K"], [8, "J", "X"],
          [10, "Q", "Z"]]

  def initialize(str)
    if str == nil
      @word = ['']
    else
      @word = str.upcase.chars
    end
  end

  def score
    result = []
    word.each do |character|
      SCORE.each { |group| result << group.first if group.include?(character) }
    end
    result.sum
  end

  def self.score(given_word)
    result = []
    given_word.upcase.chars.each do |character|
      SCORE.each { |group| result << group.first if group.include?(character) }
    end
    result.sum
  end

  private

  attr_reader :word
end

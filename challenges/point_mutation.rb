class DNA
  attr_reader :dna_string

  def initialize(dna_string)
    @dna_string = dna_string
  end

  def hamming_distance(comparison_dna)
    compare = [dna_string, comparison_dna]
    iterations = compare.min{|a, b| a.size <=> b.size }.size
    counter = 0
    iterations.times do |letter|
      counter += 1 if dna_string[letter] != comparison_dna[letter]
    end
    counter
  end
end

class SumOfMultiples
  def initialize(*num1)
    @set = *num1
  end

  def self.to(high_limit)
    SumOfMultiples.new(3, 5).to(high_limit)
  end

  def to(high_limit)
    possiple_multiples = (set.min...high_limit).to_a
    possiple_multiples.select do |num|
      set.any? { |set_num| (num % set_num).zero? }
    end.sum
  end

  private

  attr_reader :set
  attr_accessor :multiples
end

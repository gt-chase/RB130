class PerfectNumber


  def self.classify(number)
    raise StandardError if number < 1
    range = (1..(number/2 + 1)).to_a
    factors = []
    range.each do |num|
      factors << num if number%num == 0
    end
    sum_of_factors = factors.sum
    
    if sum_of_factors < number
      "deficient"
    elsif sum_of_factors == number
      "perfect"
    else sum_of_factors > number
      "abundant"
    end
  end
end

class Triangle
  attr_reader :sides
  def initialize(num1, num2, num3)
    @sides = [num1, num2, num3]
    raise ArgumentError.new unless valid?
  end

  def valid?
    !include_zero? && !include_neg? && !illegal_sides?
  end

  def include_zero?
    sides.include?(0)
  end

  def include_neg?
    negs = sides.select { |num| num < 0 }
    !negs.empty?
  end

  def illegal_sides?
    low_to_high = sides.sort
    low_to_high[0] + low_to_high[1] <= low_to_high[2]
  end

  def kind
    if sides.uniq == sides
      "scalene"
    elsif sides.count(sides.first) == 3
      "equilateral"
    else
      "isosceles"
    end
  end
end

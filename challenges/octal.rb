class Octal
  def initialize(octal_num)
    @octal_num = octal_num
  end

  def to_decimal
    return 0 if invalid?
    octal_num.chars.reverse.map.with_index do |num, ind|
      num.to_i * (8**ind)
    end.sum
  end

  def invalid?
    octal_num.match?(/([89]|[a-zA-Z])/)
  end

  private

  attr_reader :octal_num
end

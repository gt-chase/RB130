class Diamond
  def self.make_diamond(letter)
    arr = ('A'..letter.upcase).to_a
    num = arr.size
    return "A\n" if num == 1

    left_space = num - 1
    center_space = 1
    first = "#{' ' * left_space}A#{' ' * left_space}"
    result = []
    result << first

    loop do
      left_space -= 1
      current_letter = arr[-left_space - 1]
      result << "#{' ' * left_space}#{current_letter}#{' ' * center_space}
      #{current_letter}#{' ' * left_space}"
      break if left_space == 0
      center_space += 2
    end

    result.reverse[1..-1].each { |line| result << line }

    result.join("\n") + "\n"
  end
end

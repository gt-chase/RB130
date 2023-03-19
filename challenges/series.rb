class Series
  def initialize(string_num)
    @string_num = string_num
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > string_num.size
    reps = string_num.size - slice_length
    sliced = []
    0.upto(reps) do |ind|
      sliced << string_num[ind, slice_length]
    end
    sliced.map { |num| num.chars.map(&:to_i) }
  end

  private

  attr_reader :string_num
end

# refractored. Switched `times` to upto and deleted `= 1` from `reps` assignment
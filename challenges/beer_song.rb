class BeerSong
  # rubocop:disable Metrics/MethodLength
  def self.verse(number)
    output = []
    num = number

    case num
    when 1
      # rubocop:disable Layout/LineLength
      output << "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      output << "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 0
      output << "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      output << "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n"
      # rubocop:enable Layout/LineLength
    end

    output.join("\n")
  end
  # rubocop:enable Metrics/MethodLength

  def self.verses(start, finish)
    result = []
    current_verse = start

    while current_verse >= finish
      result << BeerSong.verse(current_verse)
      current_verse -= 1
    end

    result.join("\n")
  end

  def self.lyrics
    BeerSong.verses(99, 0)
  end
end

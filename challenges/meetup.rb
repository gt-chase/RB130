require 'date'
# month = Date.new(2023, 3)
# p month.wday

p Date.civil(2013, 5, 7)

class Meetup
  attr_reader :year, :month

  def initialize(year, month)
    @year = year
    @month = month
  end

  DESCRIPTORS = { 'sunday' => 0, 'monday' => 1, 'tuesday' => 2,
                  'wednesday' => 3, 'thursday' => 4, 'friday' => 5,
                  'saturday' => 6 }
  OCCURANCE = { 'first' => 1, 'second' => 2, 'third' => 3, 'fourth' => 4,
                'fifth' => 5 }

  def day(weekday, schedule)
    counter = 0
    day = 1
    loop do
      currentday = Date.new(year, month, day)
      counter += 1 if currentday.wday == DESCRIPTORS[weekday.downcase]
      break if counter == OCCURANCE[schedule.downcase]
      day += 1
    end

    Date.civil(year, month, day)
  end
end

p Date.civil(2023, 2, -1)

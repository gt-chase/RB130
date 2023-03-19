require 'pry-byebug'

class Clock
  attr_accessor :hour, :min

  def initialize(hour, min)
    @hour, @min = hour, min 
  end

  def self.at(first, second=0)
    Clock.new(first, second)
  end

  def to_s
    "#{format(hour)}:#{format(min)}"
  end

  def format(num)
    num = num.to_s
    if num.size == 1
      "0" + num 
    else
      num 
    end
  end

  def +(num)
    if num > 1439
      num = (num%1440)
    end
    
    if num > 59
      new_min = (num % 60) + self.min
      new_hour = (num / 60) + self.hour
      new_hour = (new_hour - 24) if new_hour > 23
    else
      new_min = num + self.min
      new_hour = self.hour
      new_hour = (new_hour - 24) if new_hour > 23
    end
      Clock.at(new_hour, new_min)
  end

  def -(num)
    if num > 1439
      num = (num%1440)
    end

    if num > 59
      new_min = self.min - (num % 60)
      new_hour = self.hour - (num / 60)
      new_hour = (24 + new_hour) if new_hour < 0
    else
      new_min = self.min - num
      new_hour = self.hour
    end
    # new_min -= (num - new_min)
    if new_min < 0
      new_hour -= 1
      new_hour = (24 + new_hour) if new_hour < 0
      new_min = 60 + new_min
      Clock.at(new_hour, new_min)
    else
      Clock.at(new_hour, new_min)
    end
  end

  def ==(other)
    min == other.min && 
    hour == other.hour
  end
end

clock = Clock.at(0, 30) - 60
p clock.to_s

# clock = Clock.at(10) - 90
# p clock.to_s

# clock = Clock.at(10) - 3061
# p clock.to_s


# clock = Clock.at(10) + 3061
# p clock.to_s


class RomanNumeral
  attr_reader :integer
  
  def initialize(integer)
    @integer = integer
  end

  RM_DIG = {'1' => 'I', '2' => 'II', '3' => 'III',
            '4' => 'IV', '5' => 'V', '6' => 'VI', 
            '7' => 'VII', '8' => 'VIII', '9' => 'IX', 
            '10' => 'X', '20' => 'XX', '30' => 'XXX', 
            '40' => 'XL', '50' => 'L',  '60' => 'LX', 
            '70' => 'LXX', '80' => 'LXXX', '90' => 'XC', 
            '100' => 'C', '200' => 'CC', '300' => 'CCC',
            '400' => 'CD', '500' => 'D', '600' => 'DC',
            '700' => 'DCC', '800' => 'DCCC', '900' => 'CM',
            '1000' => 'M', '2000' => 'MM', '3000' => 'MMM'}

  def to_roman
    digits = integer.to_s.chars.reverse
    digits.map!.with_index do | dig, ind |
      dig + ('0'*ind)
    end
    
    digits.select! do |dig|
      dig.chars.first != '0'
    end

    dig_as_num = digits.map do |dig|
      RM_DIG[dig]
    end
    dig_as_num.reverse.join
  end
  
  def dig_to_numeral(str_num)
    str_num = RM_DIG[str_num]
  end
end



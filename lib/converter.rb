class Converter
  def convert(num)
    digits     = num.digits.reverse
    ones_place = digits[1].to_i
    tens_place = digits[0].to_i

    case tens_place
    when 4
      tens_place = 'XL'
    end

    case ones_place
    when 9
      ones_place = 'IX'
    when 4
      ones_place = 'IV'
    end

    numeral = tens_place + ones_place
    numeral
  end
end

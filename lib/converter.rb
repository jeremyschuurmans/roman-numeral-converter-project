class Converter
  def convert(num)
    if num.digits.count > 1
      digits = num.digits.reverse
      ones_place = digits[1].to_i
      tens_place = digits[0].to_i
    else
      digits = num
      ones_place = digits
      tens_place = ''
    end

    case tens_place
    when 1..3
      tens_place = 'X' * tens_place
    when 4
      tens_place = 'XL'
    end

    case ones_place
    when 9
      ones_place = 'IX'
    when 5..8
      ones_place = 'V' + ('I' * (ones_place - 5))
    when 4
      ones_place = 'IV'
    else
      ones_place = ''
    end

    # tens_place
    # ones_place

    numeral = tens_place + ones_place
    numeral
  end
end

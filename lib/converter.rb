class Converter
  def convert(num)
    if num.digits.count > 1              # if we're dealing with a number bigger than 9
      digits     = num.digits.reverse    # separate into array of digits and reverse it. Reverse because the #digits method flips the order.
      tens_place = digits[0].to_i
      ones_place = digits[1].to_i
    else                                 # if it's number between 1 and 9 assign it to the ones place and leave tens place blank.
      digits     = num
      tens_place = ''
      ones_place = digits
    end

    # assign numbers in tens place and ones place to roman numerals

    case tens_place
    when 4
      tens_place = 'XL'
    when 1..3
      tens_place = 'X' * tens_place
    end

    case ones_place
    when 9
      ones_place = 'IX'
    when 5..8
      ones_place = 'V' + ('I' * (ones_place - 5))
    when 4
      ones_place = 'IV'
    when 1..3
      ones_place = 'I' * ones_place
    else
      ones_place = ''
    end

    numeral = tens_place + ones_place   # combine the strings and return
    numeral
  end
end

require 'json'

class Converter
    NUMERALS = {
        "L" => 50,
        "X" => 10,
        "V" => 5,
        "I" => 1
    }

    def convert_roman_to_arabic(input)
        result = 0  # counter will keep track of the values through the iteration
        i = 0       # i will track the index

        while i < input.length  
            current_value = NUMERALS[input[i]]
            next_value_exists = (i+1 < input.length)

            if next_value_exists
                next_value = NUMERALS[input[i+1]]

                if current_value >= next_value  # if the value at the current index is greater than or equal to the adjacent value
                    result += current_value     # increment the counter by that value
                    i += 1                      # move the index forward one
                else
                    result += (next_value - current_value)    # otherwise subtract the current value from the adjacent value
                    i += 2                                    # increment the counter by two because the next value has already been factored in
                end
            else
                result += current_value
                i += 1
            end
            converted_value = { :value => result }
        end
        JSON.generate(converted_value)
    end
end
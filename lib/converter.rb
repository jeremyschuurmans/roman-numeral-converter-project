class Converter
    NUMERALS = {
        "L" => 50,
        "X" => 10,
        "V" => 5,
        "I" => 1
    }

    def convert(input)
        result = 0
        i = 0

        while i < input.length
            current_value = NUMERALS[input[i]]

            if i+1 < input.length
                next_value = NUMERALS[input[i+1]]

                if current_value >= next_value
                    result += current_value
                    i += 1
                else
                    result += (next_value - current_value)
                    i += 2
                end
            else
                result += current_value
                i += 1
            end
        end
        result
    end
end
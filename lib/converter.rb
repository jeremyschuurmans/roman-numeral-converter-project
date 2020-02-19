class Converter
    NUMERALS = {
        "L" => 50,
        "X" => 10,
        "I" => 1
    }

    def convert(input)
        result = 0
        i = 0

        while i < input.length
            value = NUMERALS[input[i]]

            result += value
            i += 1
        end
        result
    end
end
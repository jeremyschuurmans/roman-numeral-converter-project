class NumeralConverter
    def convert(numeral)
        numerals = {
            "I" => 1,
            "V" => 5,
            "X" => 10,
            "L" => 50
        }

        values = []
        
        numeral_array = numeral.split("")
        numeral_array.each do |numeral|
            values << numerals.values_at(numeral)
        end
        
        values.flatten!
        
        duplicate_value = {}

        values.each do |value|
            if duplicate_value[value]
                values.delete(value)
            else
                duplicate_value[value] = 1
            end
        end
        
        values

        if values.length == 2 && (values[0] == 50 || values[0] == 10)
            result = values[0] - values[1]
        elsif values.length == 3 && values[1] == 50
            result = (values[1] - values[0]) + values[2]
            result
        end
    end
end

# expected: 49
# got: [50, 1]

# expected: 45
# got: [10, 50, 5]
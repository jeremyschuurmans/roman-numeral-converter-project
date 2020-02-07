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

        result = values[0] - values[1]

        result
    end
end
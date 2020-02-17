class NumeralConverter
    def convert(numeral)
        numerals = {
            "I" => 1,
            "V" => 5,
            "X" => 10,
            "L" => 50
        }

        values = []
        tens_place = nil
        ones_place = nil
        
        numeral_array = numeral.split("")
        
        numeral_array.each do |numeral|
            values << numerals.values_at(numeral)
        end
        
        values.flatten!
        
        if numeral_array.size > 4 && (numeral_array[-2] < numeral_array[-1])
            tens_place = values[0..-3].inject(:+)
            ones_place = values[-1] - values[-2]
        elsif numeral_array.size > 4
            tens_place = values[0..2].inject(:+)
            ones_place = values[3..-1].inject(:+)
        elsif numeral_array.size == 4
            if values[1] > values[0]
                tens_place = values[1] - values[0]
            else
                tens_place = values[0] + values[1]
            end

            if values[3] > values[2]
                ones_place = values[3] - values[2]
            else
                ones_place = values[2] + values[3]
            end
        elsif numeral_array.size == 3
            if values[1] > values[0]
                tens_place = values[1] - values[0]
            else
                tens_place = values[0] + values[1]
            end

            ones_place = values[2]
        elsif numeral_array.size == 2
            tens_place = values[0]
            ones_place = values[1]
        elsif numeral_array.size < 2
            tens_place = values[0]
            ones_place = 0
        end

        if ones_place > tens_place
            result = ones_place - tens_place
        else
            result = ones_place + tens_place
        end
        result
    end
end
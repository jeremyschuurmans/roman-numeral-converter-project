require 'converter'

RSpec.describe Converter, '#convert_roman_to_arabic' do
    cases = [
        ["L", 50],
        ["XLIX", 49],
        ["XL", 40],
        ["XXXVI", 36],
        ["XXX", 30],
        ["XIX", 19],
        ["X", 10],
        ["VII", 7],
        ["V", 5],
        ["II", 2],
        ["I", 1]
    ]

    cases.each do |given, expected|
        it 'returns the proper value when passed a roman numeral string' do

            result = Converter.new.convert_roman_to_arabic(given)

            expect(result).to eq(expected)
        end
    end

    it 'returns an error message when passed invalid input' do
        expect { Converter.new.convert_roman_to_arabic("P") }.to raise_error(TypeError)
    end
end
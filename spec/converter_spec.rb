require 'converter'

RSpec.describe Converter, '#convert' do
    cases = [
        ["L", 50],
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

    cases.each do |numeral, value|
        it 'returns the proper value when passed a roman numeral string' do
            expect(Converter.new.convert(numeral)).to eq(value)
        end
    end
end
require 'numeral_converter'

RSpec.describe NumeralConverter, '#convert' do
    it 'takes in XLIX and returns 49' do
        convert_XLIX = NumeralConverter.new
        result = convert_XLIX.convert('XLIX')
        expect(result).to eq(49)
    end
end
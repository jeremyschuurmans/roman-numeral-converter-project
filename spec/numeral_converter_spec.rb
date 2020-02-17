require 'numeral_converter'

RSpec.describe NumeralConverter, '#convert' do
    it 'takes in XLIX and returns 49' do
        convert_XLIX = NumeralConverter.new
        result = convert_XLIX.convert('XLIX')
        expect(result).to eq(49)
    end

    it 'takes in XLV and returns 45' do
        convert_XV = NumeralConverter.new
        result = convert_XV.convert('XLV')
        expect(result).to eq(45)
    end
end
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

    it 'takes in XL and returns 40' do
        convert_XL = NumeralConverter.new
        result = convert_XL.convert('XL')
        expect(result).to eq(40)
    end

    it 'takes in XXXIX and returns 39' do
        convert_XXXIX = NumeralConverter.new
        result = convert_XXXIX.convert('XXXIX')
        expect(result).to eq(39)
    end

    it 'takes in XXXVIII and returns 38' do
        convert_XXXVIII = NumeralConverter.new
        result = convert_XXXVIII.convert('XXXVIII')
        expect(result).to eq(38)
    end

    it 'takes in XXX and returns 30' do
        convert_XXX = NumeralConverter.new
        result = convert_XXX.convert('XXX')
        expect(result).to eq(30)
    end
end
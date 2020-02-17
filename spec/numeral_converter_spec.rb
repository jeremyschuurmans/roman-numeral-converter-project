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

    it 'takes in X and returns 10' do
        convert_X = NumeralConverter.new
        result = convert_X.convert('X')
        expect(result).to eq(10)
    end

    it 'takes in IX and returns 9' do
        convert_IX = NumeralConverter.new
        result = convert_IX.convert('IX')
        expect(result).to eq(9)
    end

    it 'takes in VIII and returns 8' do
        convert_VIII = NumeralConverter.new
        result = convert_VIII.convert('VIII')
        expect(result).to eq(8)
    end

    it 'takes in VII and returns 7' do
        convert_VII = NumeralConverter.new
        result = convert_VII.convert('VII')
        expect(result).to eq(7)
    end

    it 'takes in VI and returns 6' do
        convert_VI = NumeralConverter.new
        result = convert_VI.convert('VI')
        expect(result).to eq(6)
    end
end
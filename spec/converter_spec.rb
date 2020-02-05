require 'converter'

RSpec.describe Converter, '#convert' do
  it 'takes in 49 and returns XLIX' do
    convert_49 = Converter.new
    result = convert_49.convert(49)
    expect(result).to eq('XLIX')
  end

  it 'takes in 40 and returns XL' do
    convert_40 = Converter.new
    result = convert_40.convert(40)
    expect(result).to eq('XL')
  end

  it 'takes in 30 and returns XXX' do
    convert_30 = Converter.new
    result = convert_30.convert(30)
    expect(result).to eq('XXX')
  end

  it 'takes in 20 and returns XX' do
    convert_20 = Converter.new
    result = convert_20.convert(20)
    expect(result).to eq('XX')
  end

  it 'takes in 10 and returns X' do
    convert_10 = Converter.new
    result = convert_10.convert(10)
    expect(result).to eq('X')
  end
end

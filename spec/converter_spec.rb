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

  it 'takes in 9 and returns IX' do
    convert_9 = Converter.new
    result = convert_9.convert(9)
    expect(result).to eq('IX')
  end

  it 'takes in 8 and returns VIII' do
    convert_8 = Converter.new
    result = convert_8.convert(8)
    expect(result).to eq('VIII')
  end

  it 'takes in 7 and returns VII' do
    convert_7 = Converter.new
    result = convert_7.convert(7)
    expect(result).to eq('VII')
  end

  it 'takes in 6 and returns VI' do
    convert_6 = Converter.new
    result = convert_6.convert(6)
    expect(result).to eq('VI')
  end

  it 'takes in 5 and returns V' do
    convert_5 = Converter.new
    result = convert_5.convert(5)
    expect(result).to eq('V')
  end
end

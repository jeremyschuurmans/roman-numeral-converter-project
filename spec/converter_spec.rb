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
end

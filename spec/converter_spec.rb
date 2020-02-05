require 'converter'

RSpec.describe Converter, '#convert' do
  it 'takes in 49 and returns XLIX' do
    convert_49 = Converter.new
    result = convert_49.convert(49)
    expect(result).to eq('XLIX')
  end
end

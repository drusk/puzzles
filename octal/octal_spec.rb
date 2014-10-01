require 'rspec'

require_relative 'octal'

describe 'Octal' do
  it 'should return 25 in decimal given 31 in octal' do
    expect(octal_to_decimal(31)).to eq 25
  end

  it 'should return 8 in decimal given 8 in octal' do
    expect(octal_to_decimal(8)).to eq 8
  end

  it 'should raise an ArgumentError if input is not an integer' do
    # NOTE: Need to pass a block to expect when it will raise and exception
    expect {octal_to_decimal(2.5)}.to raise_error ArgumentError
  end

  it 'should raise an ArgumentError if input is not a valid octal number' do
    # NOTE: Need to pass a block to expect when it will raise and exception
    expect {octal_to_decimal(39)}.to raise_error ArgumentError
  end
end
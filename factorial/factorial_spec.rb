require 'rspec'

require_relative 'factorial'

describe 'Factorial' do
  it 'should return 0! = 1' do
    expect(factorial(0)).to eq 1
  end

  it 'should return 1! = 1' do
    expect(factorial(1)).to eq 1
  end

  it 'should return 2! = 2' do
    expect(factorial(2)).to eq 2
  end

  it 'should return 3! = 6' do
    expect(factorial(3)).to eq 6
  end

  it 'should return 9! = 362880' do
    expect(factorial(9)).to eq 362880
  end
end
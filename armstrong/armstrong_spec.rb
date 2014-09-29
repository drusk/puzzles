require 'rspec'

require_relative 'armstrong'

describe 'Amstrong' do
  it 'should detect amstrong number' do
    expect(is_armstrong(153)).to be true
  end

  it 'should recognize this is not an armstrong number' do
    expect(is_armstrong(154)).to be false
  end
end
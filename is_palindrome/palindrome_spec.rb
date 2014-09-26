require 'rspec'

require_relative 'palindrome'

describe 'Palindrome' do
  it 'should return true for even length palindrome' do
    expect(is_palindrome('abccba')).to be true
  end

  it 'should return true for odd length palindrome' do
    expect(is_palindrome('abcba')).to be true
  end

  it 'should return false for non-palindromes' do
    expect(is_palindrome('abceba')).to be false
  end

  it 'should ignore case' do
    expect(is_palindrome('Racecar')).to be true
  end

  it 'should accept spaces' do
    expect(is_palindrome('ab c ba')).to be true
  end
end
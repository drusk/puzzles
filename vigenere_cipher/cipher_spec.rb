require 'rspec'

require_relative 'cipher'

describe 'Cipher' do

  it 'should encrypt message as expected' do
    expect(encrypt('TODAYISMYBIRTHDAY', 'REDDIT')).to eq('KSGDGBJQBEQKKLGDG')
  end

  it 'should decrypt message as expected' do
    expect(decrypt('KSGDGBJQBEQKKLGDG', 'REDDIT')).to eq('TODAYISMYBIRTHDAY')
  end

  it 'should not change original message when encrypting' do
    message = 'TODAYISMYBIRTHDAY'
    key = 'REDDIT'
    encrypt(message, key)

    expect(message).to eq('TODAYISMYBIRTHDAY')
  end

  it 'should not change message when decrypting' do
    encrypted = 'KSGDGBJQBEQKKLGDG'
    key = 'REDDIT'
    decrypt(encrypted, key)

    expect(encrypted).to eq('KSGDGBJQBEQKKLGDG')
  end

end
BASE = 'A'.ord
ALPHABET_LENGTH = 26

def encrypt(message, key)
  encrypted = ''

  (0...message.length).each do |i|
    encrypted += (
      (message[i].ord + key[i % key.length].ord - 2 * BASE) % ALPHABET_LENGTH + BASE
    ).chr
  end

  encrypted
end


def decrypt(encrypted, key)
  decrypted = ''

  (0...encrypted.length).each do |i|
    decrypted += (
      (encrypted[i].ord - key[i % key.length].ord) % ALPHABET_LENGTH + BASE
    ).chr
  end

  decrypted
end

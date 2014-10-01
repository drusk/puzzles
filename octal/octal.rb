# Converts an octal number into its decimal equivalent.
# Params:
#   octal: the octal to be converted.  Must be an integer.
def octal_to_decimal(octal)
  if !octal.is_a? Integer
    raise ArgumentError, 'Octal number must be an integer.'
  end

  digits = octal.to_s.chars.map(&:to_i)

  if digits[-1] == 9
    raise ArgumentError, "Invalid octal number: #{octal}"
  end

  decimal = 0
  digits.reverse.each_with_index do |digit, index|
    decimal += digit * 8 ** index
  end

  return decimal
end


if __FILE__ == $PROGRAM_NAME
  if ARGV.length != 1
    puts "Usage: ruby #{$PROGRAM_NAME} <octal number>"
    abort
  end

  octal = ARGV[0].to_i
  decimal = octal_to_decimal(octal)
  puts "#{octal} in octal is #{decimal} in decimal."
end
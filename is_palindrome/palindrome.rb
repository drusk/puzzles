def is_palindrome(string)
  string.downcase == string.downcase.reverse
end


if __FILE__ == $PROGRAM_NAME
  if ARGV.length != 1
    puts "Usage: ruby #{$PROGRAM_NAME} <string>"
    abort
  end

  string = ARGV[0]
  if is_palindrome(string)
    puts "#{string} is a palindrome."
  else
    puts "#{string} is not a palindrome."
  end
end
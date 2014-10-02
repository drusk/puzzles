def factorial(number)
  if number <= 1
    return 1
  else
    return number * factorial(number - 1)
  end
end


if __FILE__ == $PROGRAM_NAME
  if ARGV.length != 1
    puts "Usage: ruby #{$PROGRAM_NAME} <number>"
    abort
  end

  number = ARGV[0].to_i
  result = factorial(number)

  puts "#{number}! = #{result}"
end
def is_armstrong(number)
  digits = number.to_s.chars.map(&:to_i)
  armstrong_digits = digits.map { |digit| digit ** number.to_s.length }
  number == armstrong_digits.inject(:+)
end


if __FILE__ == $PROGRAM_NAME
  LOWER_BOUND = 10
  UPPER_BOUND = 10000

  puts "Searching for Armstrong numbers between #{LOWER_BOUND} and #{UPPER_BOUND}:"

  (LOWER_BOUND...UPPER_BOUND).each do |number|
    if is_armstrong(number)
      puts number
    end
  end
end
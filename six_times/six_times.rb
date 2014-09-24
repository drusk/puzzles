LOWER_BOUND = 1
UPPER_BOUND = 999

puts "Searching from #{LOWER_BOUND} to #{UPPER_BOUND} ..."

(LOWER_BOUND..UPPER_BOUND).each do |n|
  # http://stackoverflow.com/questions/13091558/how-do-i-iterate-through-the-digits-of-an-integer
  digits = n.to_s.chars.map(&:to_i)

  if digits.inject(:+) * 6 == n
    puts "#{n} is exactly six times the sum of its digits."
  end
end
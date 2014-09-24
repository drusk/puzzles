From http://problemotd.com/problem/six-times/

There exists at least one number that is 6 times the sum of its digits. 
What is the first occurrence of this phenomenon and are there any other 
numbers with this same pattern?

Solution:

The sum of the digits grows much slower than the value of the number.
For example, 

9 -> 9 * 6 = 54 >> 9

99 -> (9 + 9) * 6 = 108 > 99 but close

999 -> (9 + 9 + 9) * 6 = 162 << 999

And from there the gap just grows.

From this we can conservatively limit our search to numbers less than 999.
The search to find the actual numbers is implemented in Ruby in six_times.rb
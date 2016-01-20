#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

require 'prime'

((1..2000000).to_a.select &:prime?).inject(:+)
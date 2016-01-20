#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

require 'prime'
def largest_prime
	((600851475143 ** 0.5).to_i + 1).downto(1) {|x| return x if (Prime.prime? x) && 600851475143 % x == 0
end
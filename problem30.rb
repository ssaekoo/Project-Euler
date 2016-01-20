#Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

#1634 = 1**4 + 6**4 + 3**4 + 4**4
#8208 = 8**4 + 2**4 + 0**4 + 8**4
#9474 = 9**4 + 4**4 + 7**4 + 4**4
#As 1 = 14 is not a sum it is not included.

#The sum of these numbers is 1634 + 8208 + 9474 = 19316.

#Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
class Integer
	
	def power_equal?
		
		power_sum = 0
		y = self.to_s.split('')
		
		y.each do |i|
			
			power_sum += i.to_i**5
		end
		
		if power_sum == self
			
			return true
		else
			
			return false
		end
	end
end
			

sum = 0
(2..355000).each do |x|

	if x.power_equal?
		
		puts x
		sum += x
	end
end
puts sum
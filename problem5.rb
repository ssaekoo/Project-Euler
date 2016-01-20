#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class Integer
	def divisible?
		(11..19).each {|x| return false if self % x != 0}
	end	
end
	
def smallest
	i = 20
	until i.divisible?
		i += 20
	end
	i
end
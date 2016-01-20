#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

Class Array
	def palindrome?
		(1..self.length).each {|x| return false if self[x-1] != self[-x]}
		true
	end
end

def largest_palindrome
	products = ((100..999).to_a).product((100..999).to_a)
	(products).map {|x| x[0] * x[1]}.uniq.sort {|a, b| b <=> a}.each {|x| return x if (x.to_s.split('')).palindrome?}
end
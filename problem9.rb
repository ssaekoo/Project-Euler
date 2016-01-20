#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

((((1..1000).to_a).product((1..1000).to_a)).map do |x, y|
	z = (x**2 + y**2)**0.5
	[x * y * z, x + y + z]
end).select {|x, y| y == 1000}[0][0]

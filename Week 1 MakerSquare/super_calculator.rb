# Example: 
# 
# 	superCalculator('+', 15, 24, 12)
# 	this calculator takes in an operator and an unlimited amount
# 	of additional arguments to do arithmetic on

def superCalculator(operator, expression, *additional_numbers)
	additional_numbers.each do |number|
		expression = number.send(operator, expression)
	end
	expression
end
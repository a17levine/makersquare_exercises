def hello
	puts "hello, how are you?"
	answer = gets.chomp
	puts "I'm glad you're doing #{answer}"
end

def hello_name(name)
	puts "Hello, #{name}, how are you?"
end
def year_of_birth(age)
	currentyear = 2013
	currentyear-age
end

def multiply_three(x, y, z)
	puts x * y * z 
	
end
def addition(*numbers)
	total = 0
	numbers.each do |number|
		total = total + number
	end
	total
end

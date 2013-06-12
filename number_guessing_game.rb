# this script picks a random number
# then, it asks the user to guess the number
# it tracks how many times the user has tried
# and also if the guess is 'warmer' or 'colder' than the last guess

def guess_number_1
    random_number = rand(100) # rand gives random number between 0 and x-1
    puts "Guess a number any number"
    #puts random_number #this line is for me when I'm tired of guessing and I want to escape! :)
    guess = nil
    try = 0
    last_distance = nil

    until guess == random_number
    	puts "Go fish"
    	puts "you've tried #{try} times"
    	guess = gets.chomp.to_i
    	if guess > random_number
    		puts "lower"
    	else
    		puts "higher"
    	end
    	
    	unless try == 0
    		current_distance = distance(guess, random_number)
    		if current_distance > last_distance
    			puts "colder"
    		elsif current_distance < last_distance
    			puts "warmer"
    		else
    			puts "you tried that last time"
    		end
    	end
    	try += 1
    	last_distance = distance(guess, random_number)
    end

    puts "woohoo, you got it!"

end

def distance(num1,num2)
	(num1-num2).abs	
end
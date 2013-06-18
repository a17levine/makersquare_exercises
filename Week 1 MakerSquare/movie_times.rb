def is_movie_available_2(name,time)
	movie_timings = {
		"Thor" => [100,400,0600,1200,1400,1830],
		"Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
		"Hulk" => [1200, 1500, 1830, 2200],
		"Iron Man" => [1315,1645]
	}
	if movie_timings[name].include?(time) ==true
		puts "Movie playing at your time!"		
	else
		puts "Movie not playing at your time..."
	end
end

def movies()
	movie_timings = {
		"Thor" => [100,400,600,1200,1400,1830],
		"Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
		"Hulk" => [1200, 1500, 1830, 2200],
		"Iron Man" => [1315,1645]
	}
	movie_timings["Thor"]	
end

def is_movie_available_3(name,time)

	movie_timings = {
		"Thor" => [100,400,0600,1200,1400,1830],
		"Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
		"Hulk" => [1200, 1500, 1830, 2200],
		"Iron Man" => [1315,1645]
	}

	if movie_timings.has_key?(name)
		movie_timings[name].each do |movie_time|
			if time<movie_time
				return movie_time
			end
		end
	else
		puts "That movie aint here"
	end
end


def is_movie_available_4(time)
    # TODO: Return a dictionary of movies being played mapped to a list of movie timings
    # that the user can go to
    # Only add the move as a key if a proper timing is available
    movie_timings = {
        "Thor" => [100, 400, 600, 1200, 1400, 1830],
        "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
        "Hulk" => [ 1200, 1500, 1830, 2200],
        "Iron Man" => [1315, 1645],
        "Something" => [400]
    }

    good_times = []
    movies = {}
    
    movie_timings.each do |movie, showtimesArray|
	    showtimesArray.each do |showtime|
	    	if showtime > time
	    		good_times.push(showtime)
	    	end

	    	unless good_times.empty?
	    		movies[movie] = good_times
	    	end  	
	    end
	    good_times=[]
	end
    return movies
end


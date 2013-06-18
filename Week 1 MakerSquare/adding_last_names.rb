# TODO iterate through the array of the smith family using each and add the last name to each person.
# The array should look like this at the end: ["John Smith", "Jane Smith", "Jacob Smith"]
smith_family = ["John", "Jane", "Jacob"]
last_name = "Smith"
space = " "

smith_family.each do |family_member| 
	family_member << space << last_name 
end

puts smith_family
# PROBLEM 1

# Create a class called Utility.
# Add a class method to Utility called count_words that takes a string as a parameter. 
# 
# The method should return a hash where the keys are words and the values are numbers 
# 	indicating the number of times the key occurred in the input string. 

# 	For example, Utility.count_words('the good and the bad and the ugly') should return:
# 	{"the" => 3, "good" => 1, "and" => 2, "bad" => 1, "ugly" => 1}
 	
# 	and Utility.count_words('The good, the bad, and the ugly') should return:
# 	{"The" => 1, "good," => 1, "the" => 2, "bad," => 1, "and" => 1, "ugly" => 1}

# Print the result of calling this method with the string It was the best of times, it was the worst of times.

class Utility
	def count_words(string)
		words = string.split(' ')
		word_count = {}
		words.each do |word|
			if word_count[word] == nil
				word_count[word] = 0
			end
			word_count[word] = word_count[word] + 1
		end
		return word_count
	end

end

utility = Utility.new
puts(utility.count_words('It was the best of times, it was the worst of times'))

# PROBLEM 2

# Create a class called Animal.
# Add an instance method to Animal called sound that returns a string indicating the sound an animal makes.
# Add an instance method to Animal called speak that prints the string 
# 	'The animal says: [followed by the string returned by the sound method.]'

# Now create two subclasses of Animal (that is, classes whose parent class is Animal).
# Override the sound method of each of your subclasses to return a string appropriate for that particular animal 
# 	instead of the string returned by the parent class.
# Call the speak method on an instance of each of your subclasses.

class Animal
	def description
		'animal'
	end
	
	def speak
		puts("The #{description} says #{sound}!")
	end
	
	def sound
		'something'
	end
end

puts(Animal.new.sound)
Animal.new.speak

class Dog < Animal

	def description
		'dog'
	end

	def sound
		'bark'
	end
end

class Bird < Animal

	def description
		'bird'
	end

	def sound
		'chirp'
	end
end

Dog.new.speak
Bird.new.speak

# PROBLEM 4

# HTTP GET retrieves existing data to display, while HTTP POST sends data for creation.





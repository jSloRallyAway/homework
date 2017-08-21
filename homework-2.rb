# PROBLEM 1

# Defining a method "fizzbuzz" that takes the argument "number"
def fizzbuzz(number)
  # Defining a "case" statement
  case
  	# When a number is equally divisble by 15, then the method will return "Fizzbuzz"
    when number % 15 == 0 then 'Fizzbuzz'
  	# When a number is equally divisble by 3, then the method will return "Fizz"
    when number % 3  == 0 then 'Fizz'
  	# When a number is equally divisble by 5, then the method will return "Buzz"
    when number % 5  == 0 then 'Buzz'
  	# If a number is not equally divisble by 15, 3, or 5, then the method will return the number. 
    else number
  end
end

# puts(fizzbuzz(26))


# Defining a method "fizzbuzz_to" that takes the argument "limit"
def fizzbuzz_to(limit)
  # Defines a looping method that begins at 1 and goes up until the "limit" inputted into the "fizzbuzz_to" method
  1.upto(limit) do |i|
  	# Displays the "fizzbuzz" loop when the method is called
    puts(fizzbuzz(i))
  end
end

fizzbuzz_to(5)

# PROBLEM 2

# Add a method to Homework called shout that takes a string as a parameter
# and returns the string in all caps. 

class Homework
	def shout(word)
	 puts(word.upcase)
	end

# Add a method to Homework called repeat_string that takes two parameters, 
# a string and an integer. The method should print the given string the number of 
# times indicated by the given integer.

	def repeat_string(string, i)
    i.times do 
      puts(string)
    end
	end


# Add a method to Homework called calendar that takes two arrays as parameters. 
# The first array should be a list of names of holidays as strings and the 
# second array should a list of the dates of those holidays as strings. 
# The method should return a hash where the keys are the names of the holidays 
# from the first array and the value for each key is the corresponding date 
# from the second array. 
# E.g. calendar(['Independence Day', 'Halloween', 'Christmas'], ['4 July', '31 October', '25 December']) should return 
# {'Independence Day' => '4 July', 'Halloween' => '31 October', 'Christmas' => '25 December'}.

  def calendar(holidays, dates)
    calendar_hash = holidays.zip(dates).to_h
    puts(calendar_hash)
  end  

end

homework = Homework.new
homework.shout('hello')
homework.repeat_string('hello', 4)

holidays = ['Halloween', 'New Years Eve', 'My Birthday']
dates = ['October 31st', 'December 31st', 'October 12th']
homework.calendar(holidays, dates)

# PROBLEM 3

# An instance variable is a variable that is local to the scope of a particular object within a class. Its value is impacted by the methods within that object but has no value beyond it.

# The method "next" on the Integer class will return the specified integer plus one (e.g. 2.next returns 3).




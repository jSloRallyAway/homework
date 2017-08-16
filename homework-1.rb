# PROBLEM 1

#test edit

# Defining the method "full_name" with 3 arguments: "first_name", "last_name", and "title"
def full_name(first_name, last_name, title)
  # Setting a variable "name" equal to nil
  name = nil

  # Defining a method that states if the input for "full_name" includes a title, first name, and last name, then the variable "name" will equal "title" + "first_name" + "last_name" (with spaces in between)
  if title && first_name && last_name
    name = title + ' ' + first_name + ' ' + last_name
  # If the input only includes a title and last name, then "name" will equal the title + last name.
  elsif title && last_name
    name = title + ' ' + last_name
  # if the input only includes a first and last name, then "name" will equal first + last name. 
  elsif first_name && last_name
    name = first_name + ' ' + last_name
  # If the input only includes a first name, then "name" will equal the first name. 
  elsif first_name
    name = first_name
  # If there are no inputs that match any of the arguments, then the return will be the an error stating "That doesn't look like a name!"
  else
    raise "That doesn't look like a name!"
  end

  # After evaluating the above if scenarios, the method will run the variable name. 
  return(name)
end

puts(full_name("Justin", "Sloane", "Mr."))
puts(full_name(nil, "Sloane", "Mr."))
# puts(full_name(nil,nil,nil))

# PROBLEM 2

def add(a,b)
  a+b
end

a_variable = add(4,4)

puts(a_variable)

# PROBLEM 3

def join_strings(string_one,string_two)
  string_one + " " + string_two
end

puts(join_strings("Yo","Momma"))

# PROBLEM 4

# Calling the method 'puts' present what the code within it evaluates to.

# Returning a value from a method commands the method to create a value when the code is run, but it doesnt necessarily present it visibly.

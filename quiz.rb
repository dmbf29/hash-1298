# Q1 - What’s a variable? What’s the point of using variables? Give an example.
# A variable is a placeholder (like a box) to store data. This is used when we need to reuse this data.
number = 20
name = 'alex'

# Q2 - Precisely describe the following line of code using the correct vocabulary.
age = 18
# a variable age has been assigned the integer 18. when age is reused else, it will return 18 as integer.

# Q3 - What’s a method? What’s the point of defining methods?
A method is similar to variable. It contains a block of code which can be resused and called upon without rewriting the code.


# Q4 - Precisely describe what happens at each line using good vocabulary. Write a ruby comment next to the line you’re explaining using the #.

# Code example given to the student:
def multiply(x, y) # x and y are parameters / multiply is the method to be called
  return x * y     # doing the acutal multiplication
end                # end

puts multiply(5, 8) # display with puts, callling the method with 5 and 8 which are arguments

# Q5 - What’s the keyword if ? Give us an example of if statements, using an age variable storing a student’s age for instance.
# if is a conditional statement
# TODO: write some code with `if`
age = 19
if age > 18
  puts 'Yayy'
else
  puts 'Booo'
end


# Q6 - Complete the following code to compute the exact average of students grades (using each ).

# Code example given to the student:
grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`
sum = 0.0
grades.each { |grade| sum += grade }
average = sum / grades.length.to_f
# average = sum.fdiv(grades.length)


# Q7 - Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).

def capitalize_name(first_name, last_name)
  # interpolation -> inserting into ONE string. need double quotes
  "#{first_name.capitalize} #{last_name.capitalize}"
  # concatenation -> adding them together
  first_name.capitalize + " " + last_name.capitalize
end



# Q8 - What’s the difference between concatenation and interpolation? Give an example.



# CRUD Array
# Q9 - Translate each line of pseudo-code into ruby.
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]

# Add an "apple" to the fruits array
fruits.push('apple')
fruits << 'apple'

# Replace "watermelon" by "pear"
fruits[2] = 'pear'

# Delete "orange"
fruits.delete('orange')
fruits.delete_at(-1)
fruits.delete_at(3)

# Q10 - Translate each line of pseudo-code into ruby. (HASH Crud)

city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = 'Eiffel Tower'

# Update the population to 2000001
city[:population] = 2000001

# What will the following code return?
city[:mayor] # nil



# Q11 - Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.Those hashes should have two keys: :name and :age. What is the type of those keys?

# They are symbols
# Code example given to the student:
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]
# TODO: Convert the array of arrays into an array of hashes.
students.map do |student|
  {
    name: student[0],
    age: student[1]
  }
end

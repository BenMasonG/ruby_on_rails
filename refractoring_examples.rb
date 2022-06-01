#The Ternary Operator - example would put "One is less than two"
puts 1 < 2 ?  "One is less than two!" :  "One is not less than two."

#An alternate to .push.
alphabet = ["a", "b", "c"] << "d"
 
caption = "A giraffe surrounded by " << "weezards!"

#To test if a method would work on a data type
[1, 2, 3].respond_to?(:push)

# Prints 95 96 97 98 99 100
95.upto(100) { |num| print num, " " }

#Conditional Assignment
favorite_book ||= "Why's (Poignant) Guide to Ruby"

#Refreactored case statement
puts "Hello there!"
greeting = gets.chomp

case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjpur!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end

#One line if/unless statements
puts "This is a test" if true
puts "This is another test" unless false

#Capitlization example
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

#splat = unkown number of arguments(argument*)
def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")
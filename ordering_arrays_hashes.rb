#Library example
def alphabetize(arr, rev=false)
    arr.sort!
    if rev == true 
      arr.reverse!
      return arr
    else
      return arr
    end
  end
  
  numbers = [1, 43, 24, 54, 89, 82, 3]
  
  puts alphabetize(numbers)

#Sorting using a block
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

#iterating over a hash
secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each do |hero, identity|
puts "#{hero}: #{identity}"
end

#Iterating over a multidimensional array
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

sub_array = s.each{|x| x.each {|x| puts "#{x}"}}

#Accessing a Hash value
pets = Hash.new

pets["Bowser"] = "dog"

puts pets["Bowser"]
=begin
This is the code I wrote for the 'A Night at the Movies' challenge
on he Learn Ruby Code Academy course.
=end


movies = {
  v_for_vendetta: 5
}

puts "What would you like to do?"
puts "add - This adds a new movie"
puts "update - This updates an existing movie"
puts "display - This displays all filed movies"
puts "delete - This deletes an existing movie"
choice = gets.chomp

case choice
  when "add"
    puts "What movie would you like to add?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      movies[title.to_sym]
      puts "What raiting do you give this movie?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}"
    else 
      put "#{title} is already listed so cannot be added"
    end

  when "update"
   puts "What movie would you like to update?"
   title = gets.chomp
   if movies[title.to_sym].nil?
     puts "#{title} is not a listed movie so cannot be updated"
   else
     puts "What would you like the new rating to be?"
     rating = gets.chomp
     movies[title.to_sym] = rating.to_i
     puts "The rating of #{title} had been updated to #{rating}"
   end

  when "display"
    movies.each{|movie, rating| puts "#{movie}: #{rating}"}

  when "delete"
    puts "What movie would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "#{title} is not listed so cannot be deleted"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been deleted from the list of movies"
    end

  else 
    puts "Error!"
end

puts movies
#class inheritence

class ApplicationError
    def display_error
      puts "Error! Error!"
    end
  end
  
  class SuperBadError < ApplicationError
  end
  
  err = SuperBadError.new
  err.display_error

#class inheritence - super
class Message
    @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to

    @@messages_sent += 1
  end
end

my_message = Message.new("Ben", "Niall")

class Email < Message
  def initialize(from, to)
    super
  end
end

#An example Lambda - need to use & to turn it into a black when calling it.
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!

first_half = lambda {|key, value| value < "M"}

a_to_m = crew.select(&first_half)

puts a_to_m

#An example Proc & it being passes as a method
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!

under_100 = Proc.new {|x| x < 100 }

youngsters = ages.select(&under_100)

puts youngsters

#An example of calling a block
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

# Add your code below!

ints = odds_n_ends.select {|x| x.is_a? Integer}

#A proc will return immediately whereas a Lambda will return to the method first.
def batman_ironman_proc
    victor = Proc.new { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
  end
  
  puts batman_ironman_proc
  #Will put Batman will win! in the console.
  
  def batman_ironman_lambda
    victor = lambda { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
  end
  
  puts batman_ironman_lambda
  #Will put Iron Man will win in the console.
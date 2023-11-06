# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

def single_array(array)
    array.values.flatten.sort
  end
  
  
  puts single_array(us_states)
  

# Pseudo code:
# input: created a method called values_removed
#  created a parameter called array
# used .value to get the value of the hashes
# then used .flatten to join the nested arrays into one array
# used .sort to to sort the array in alphabetical order 
# output: a single array with the states in alphabetical order

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

class Bike 
    attr_accessor :model, :wheels
    def initialize (model, wheels = 2) 
        @model = model
        @wheels= wheels
        @speed = 0
    end 
    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is going #{@speed} mph"
    end
    def pedal_faster(increase_speed)
        @speed += increase_speed
    end
    def brake(decrease_speed)
        @speed -= decrease_speed
       @speed = 0 if  @speed < 0
    end
end

my_bike = Bike.new('trek', 2)

puts my_bike.bike_info

puts my_bike.pedal_faster(10)
puts my_bike.pedal_faster(18)
puts my_bike.brake(5)
puts my_bike.brake(25)




# Pseudo code:
# input: created a bike class 
# inside of the class i used def initialize with my parameters 
# put in my attr_accessor
# set speed to 0 and wheels to equal 2
# created a bike info method to get my sentence and used string interpolation to make the sentence
# created bike=bike.new to pass my argumnet into the parameters
# output: a sentence a sentence with all the data from the bike object.

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# inpu: created the pedal faster method and the brake method
# put the increase speed parameter and decrease speed parameter for them 
# used an if statement in the brake method so that is the speed goes negative it will equal to zero
# output: able to increase and decrease the pedaling speed
require 'awesome_print'
require 'csv'



# Planet Example - Review initialize
class Planet
  attr_reader :name, :moons

  def initialize(name, moons)
    @name  = name.capitalize
    @moons = moons
  end

  def get_info
    "I am a planet whose name is #{ @name } and has #{ @moons }."
  end

  def self.convert_to_parsecs(miles)
    # puts @name
    miles / 1000000.32
  end

end


Planet.convert_to_parsecs(3000000000)


#
#
# mars = Planet.new("mars", 1)
# hoth = Planet.new("Hoth", 27)
# puts mars.get_info
# puts hoth.get_info
#

## Order Example - go over snake_case_names

# class Order
#   def initialize(subtotal, quantity) # <= instance method
#     @subtotal = subtotal
#     @quantity = quantity
#   end
#
#   def total # <= instance method
#     @subtotal * @quantity
#   end
#
#   def to_money # <= instance method
#     # in the line below, `total` is invoking the instance method above
#     "$" + sprintf("%0.02f", total / 100)
#   end
# end
# #
#
# my_order = Order.new(300, 2)
# puts my_order.to_money


# Coordinate example - Review Attributes
#  Getter & Setter Methods

# Using attr_accessor
# class Coordinate
#   attr_accessor :x, :y
#
#   def initialize(x, y)
#     @x = x
#     @y = y
#   end
#
# end
#
# point1 = Coordinate.new(100, 50)
# point2 = Coordinate(75, 30)
# point1.x += 10
# puts point2.y
#
## Above we have to create an instance of our class before calling a method.


## 1st Example Class method
## Note the .self, called by the class & not instance
class TryingThisOut
  def self.cool
    "This is a CLASS METHOD"
  end

  def rad
    TryingThisOut.cool +  "This is an INSTANCE METHOD"
  end
end

puts TryingThisOut.cool

try = TryingThisOut.new
#puts try.class.cool
puts try.rad

# Math.sqrt

# Will not work
# puts TryingThisOut.rad



## 2nd Example Class Method

class Penguin
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.looks
    return [1, 2, 3, 4]
  end
end

wally = Penguin.new("Wally")

puts "Wally looks  #{Penguin.looks[2]}"

## **Exercise** Rewrite Penguin to make looks be a class Method


## **Exercise** make the CSV Reading method from this morning Planet

planets = [
  [1, "Mercury", 0.055, 0.4],
  [2, "Venus", 0.815, 0.7],
  [3, "Earth", 1.0, 1.0],
  [4, "Mars", 0.107, 1.5]
]
CSV.open("planet_data.csv", "w") do |file|
  planets.each do |planet|
    file << planet
  end
end
#


class Planet
  attr_reader :name, :order, :mass, :distance

  def initialize(name, order, mass, distance)
    @name  = name.capitalize
    @order = order
    @mass = mass
    @distance = distance
  end

  def self.read_planets



  end

  def get_info
    "I am a planet whose name is #{ @name } and has a mass of  #{ @mass }."
  end

  # create class method to read planets


end


# planets = Planet.read_planets("planet_data.csv")
#
# ap planets




## Final Example
#
# class Pawn
#   def initialize(position)
#     @position = position
#   end
#
#   # This is the class method, it starts with self.
#   # It is only called on the class directly Pawn.make_row
#   def self.make_row(side)
#     if side == "white"
#       num = 2
#     else
#       num = 7
#     end
#
#     pawns = []
#     ("a".."h").each do |letter|
#       pawns << self.new("#{letter}#{num}")
#     end
#
#     pawns
#   end
# end
#
# #make one pawn
# one_pawn = Pawn.new("A2")
#
# #make a whole row of pawns
# pawns = Pawn.make_row("black")
# pawns.length # => 8

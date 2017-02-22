require 'awesome_print'


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
end


mars = Planet.new("mars", 1)
puts mars.get_info


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
#
#
# my_order = Order.new(300, 2)
# my_order.to_money


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
# end
#
# point1 = Coordinate.new(100, 50)
# point2 = Coordinate(75, 30)
# point1.x += 10
# puts point2.y
#
## Above we have to create an instance of our class before calling a method.


## 1st Example Class method
class TryingThisOut
  def self.cool
    "This is a CLASS METHOD"
  end

  def rad
    "This is an INSTANCE METHOD"
  end
end

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

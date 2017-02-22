def self.read_planets(filename)
  planets = []
  CSV.read(filename).each do |line|
    planets << Planet.new(line[1], line[0], line[2], line[3])
  end
  return planets
end

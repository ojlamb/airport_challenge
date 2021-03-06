class Airport
  NUMBER_OF_GATES = 5
  #WEATHER = ["stormy", "sunny", "sunny", "sunny", "sunny"]
  attr_accessor :airport_capacity
  attr_reader :gates
  attr_accessor :get_weather
  def initialize
    @airport_capacity = NUMBER_OF_GATES
    @name
    @gates = []
  end

  def get_capacity
    @airport_capacity
  end

  def get_weather
    rand(5) == 0 ? "stormy" : "sunny"
  end

  def accept_plane(plane)
    fail "No gates available" if airport_full?
    fail "Weather is stormy" if get_weather == "stormy"
    @gates << plane
  end

  def release_plane(plane)
    fail "Weather is stormy" if get_weather == "stormy"
    @gates.delete(plane)
  end

  def airport_full?
    @gates.count >= @airport_capacity
  end

  def plane_count
    @gates.size
  end
end

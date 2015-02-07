require_relative 'weather'

class Airport

  include Weather

  attr_reader :planes, :capacity

  def initialize
    @planes = []
    @capacity = 30
  end

  def land_plane(plane)
    @planes << planes
  end

  def take_off(plane)
    @planes.delete(plane)
  end

  def plane_count
    @planes.count
  end

  def clear_for_landing
    plane_count < capacity
  end

end
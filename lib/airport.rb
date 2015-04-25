require_relative 'weather'

class Airport

  DEFAULT_CAPACITY = 20

  def initialize
    @hangar = []
  end

  def plane_count
    @hangar.count
  end

  def park(plane)
    @hangar << plane.land!
  end

  def capacity
    DEFAULT_CAPACITY
  end
end
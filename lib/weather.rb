module Weather

  def initialize
    @stormy = nil
  end

  def stormy?
    @stormy
  end

  def weather_condition
    if rand(10) > 5 then @stormy = true
    else @stormy = false
    end

  end

end
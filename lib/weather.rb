module Weather

  def initialize
    @stormy = nil
  end

  def stormy?
    if rand(10) > 5 then @stormy = "There's a storm brewing"
    else @stormy = "The weather is sunny today"
    end
  end
end
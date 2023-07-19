class Vehicle
  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speed = false
    @passengers = []
  end

  def speeding?
    @speed
  end

  def speed
    @speed = true
  end

  def add_passenger(name)
    @passengers << name
  end

  def num_adults
    adults = passengers.find_all { |person| person.adult? }
    adults.count
  end
end

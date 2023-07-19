class Park
  attr_reader :name, :price, :vehicles, :revenue

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
    @revenue = 0
  end

  def add_vehicle(vehicle)
    @revenue += vehicle.num_adults * price
    @vehicles << vehicle
  end
end
class Park
  attr_reader :name, :price, :vehicles, :revenue, :attendees

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
    @revenue = 0
    @attendees = []
  end

  def add_vehicle(vehicle)
    @revenue += vehicle.num_adults * price
    vehicle.passengers.each { |person| @attendees << person }
    @vehicles << vehicle
  end

  def all_attendees
    @attendees.map { |person| person.name }.sort
  end

  def minors
    minor_persons = @attendees.find_all { |person| person.minor? }
    minor_names = minor_persons.map { |person| person.name }.sort
  end
  
  def adults
    adult_persons = @attendees.find_all { |person| person.adult? }
    adult_names = adult_persons.map { |person| person.name }.sort
  end
end
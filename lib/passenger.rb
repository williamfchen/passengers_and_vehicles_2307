class Passenger
  attr_reader :name, :age

  def initialize(details)
    @name = details["name"]
    @age = details["age"]
    @drive = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @drive
  end

  def drive
    @drive = true
  end
end

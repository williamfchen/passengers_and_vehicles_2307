require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  it 'exists and has readable attributes' do
    park = Park.new("Yosemite", 200)
    expect(park).to be_a(Park)
    expect(park.name).to eq("Yosemite")
    expect(park.price).to eq(200)
  end

  it '.add_vehicle and .revenue' do
    park = Park.new("Yosemite", 200)
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude) 
    vehicle.add_passenger(taylor) 
    park.add_vehicle(vehicle)
    expect(park.vehicles).to eq([vehicle])
    expect(park.revenue).to eq(400)
  end
end


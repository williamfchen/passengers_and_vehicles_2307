require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  before(:each) do
    @park = Park.new("Yosemite", 200)
    @vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @vehicle1.add_passenger(@charlie)
    @vehicle1.add_passenger(@jude) 
    @vehicle1.add_passenger(@taylor) 
    @park.add_vehicle(@vehicle1)
    @vehicle2 = Vehicle.new("1987", "Kia", "Sorrento")
    @pickle_rick = Passenger.new({"name" => "Pickle Rick", "age" => 54})
    @morty = Passenger.new({"name" => "Morty", "age" => 15})
    @meeseeks = Passenger.new({"name" => "Meeseeks", "age" => 8})
    @vehicle2.add_passenger(@pickle_rick)
    @vehicle2.add_passenger(@morty) 
    @vehicle2.add_passenger(@meeseeks) 
    @park.add_vehicle(@vehicle2)
  end

  it 'exists and has readable attributes' do
    expect(@park).to be_a(Park)
    expect(@park.name).to eq("Yosemite")
    expect(@park.price).to eq(200)
  end

  it '.add_vehicle and .revenue' do
    expect(@park.vehicles).to eq([@vehicle1, @vehicle2])
    expect(@park.revenue).to eq(600)
  end

  it '.all_attendees' do
    expect(@park.all_attendees).to eq(["Charlie", "Jude", "Meeseeks", "Morty", "Pickle Rick", "Taylor"])
  end
  
  it '.minors and .adults' do
    expect(@park.minors).to eq(["Meeseeks", "Morty", "Taylor"])
    expect(@park.adults).to eq(["Charlie", "Jude", "Pickle Rick"])
  end
end


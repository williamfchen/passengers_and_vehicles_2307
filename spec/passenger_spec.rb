require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do
  it 'exists and has readable attributes' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie).to be_a(Passenger)
    expect(taylor).to be_a(Passenger)
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it '.adult, .driver?, .drive' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie.adult?).to be true
    expect(taylor.adult?).to be false
    expect(charlie.driver?).to be false
    charlie.drive
    expect(charlie.driver?).to be true
  end

  it '.minor?' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie.minor?).to be false
    expect(taylor.minor?).to be true
  end
end
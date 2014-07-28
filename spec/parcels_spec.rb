require 'rspec'
require 'parcels'

describe "Parcels" do
  it "creates a new instance of the Parcel class" do
    xmas = Parcel.new(10,4,7,20)
    xmas.should be_an_instance_of Parcel
  end
  it "specifies height, width, length, weight" do
    xmas = Parcel.new(10,4,7,20)
    xmas.height.should eq(10)
  end
  it "returns the parcel volume" do
    xmas = Parcel.new(10,4,7,20)
    xmas.volume.should eq(280)
  end
  it "returns the shipping cost" do
    xmas = Parcel.new(10,4,7,20)
    xmas.cost_to_ship.should eq(14)
  end
end



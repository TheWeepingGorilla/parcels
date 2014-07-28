require './lib/parcels'

@parcel_list = []

def add_parcel
  puts("Please name your parcel:")
  parcel_name = gets.chomp
  puts("Please enter the height of #{parcel_name} :")
  parcel_height = gets.chomp
  puts("Please enter the width of #{parcel_name} :")
  parcel_width = gets.chomp
  puts("Please enter the length of #{parcel_name} :")
  parcel_length = gets.chomp
  puts("Please enter the volume of #{parcel_name} :")
  parcel_weight = gets.chomp
  @parcel_list << Parcel.new(parcel_height, parcel_width, parcel_length, parcel_weight, parcel_name)
  puts "#{parcel_name} has been added.\n"
end

add_parcel()
p @parcel_list

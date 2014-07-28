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
  puts "Shipping cost: #{@parcel_list[-1].cost_to_ship}"
end

def main_menu
  loop do
    p "Press 'a' to add a Parcel or 'l' to see parcel list."
    p "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'a'
      add_parcel
    elsif main_choice == 'l'
      list_parcels
    elsif main_choice == 'x'
      p "Good-bye Ol' Chap"
      exit
    else
      p "That wasn't a valid input"
    end
  end
end

def list_parcels
  p "Here are your Packages:"
  @parcel_list.each do |parcel|
    puts "#{parcel.name}, #{parcel.cost_to_ship}"
  end
end

main_menu

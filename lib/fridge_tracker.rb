require_relative '../config/environment'
require_relative '../app/models/fridge'

loop do
puts "Enter an option:"
puts "A) List all Fridges"
puts "B) Add a fridge"
puts "C) Remove a fridge"
puts "D) See all food in a fridge"
puts "E) Add food"
puts "F) Eat something"
puts "G) View drinks"

option = gets.chomp.upcase
puts "You selected #{option}"

if option.upcase == 'A'
  all_fridges = Fridge.all
  all_fridges.each_with_index do |fridge|
    puts "#{fridge.location}"
    end
  end
elsif option.upcase == 'B'
    puts "Where do you want to put it?"
    fridge_location = gets.chomp
    puts "What brand is it?"
    fridge_brand = gets.chomp
    puts "How large is your new fridge?"
    fridge_size = gets.chomp
    puts "This fridge is in #{fridge_location}. It is a #{fridge_brand} and it is #{fridge_size} cubic feet."
    Fridge.create(location:fridge_location, brand: fridge_brand, size: fridge_size)
  end
elsif option.upcase == 'C'
  puts "What is the brand of the fridge you want to delete?"
  fridge_to_delete = gets.chomp
  Fridge.find_by(brand:fridge_to_delete).delete
  puts "That fridge went to heaven."
end
elsif option.upcase == 'D'
  puts "Which fridge would you like to see?"
  fridge_see = gets.chomp.upcase
  fridge_has = Fridge.find_by(brand:fridge_see).food
  puts "That fridge contains #{fridge_had}"
end
elsif option.upcase == 'E'
  puts "What are you adding?"
  food_name = gets.chomp
  puts "How large is it?"
  food_size = gets.chomp
  puts "Is it vegan?"
  food_vegan = gets.chomp
  Food.create(name:food_name, size:size_in_pounds, vegan: food_vegan)
  puts "You added #{food_name}. It weighs #{food_size}. Thanks!"
end
elsif option.upcase == 'F'
  puts "What are you hungry for?"
  eat_food = gets.chomp
  Food.find_by(name:eat_food).delete
  puts "Oh wow, thart #{eat_food} was delicious!"
end
elsif option.upcase == 'G'
  puts "You open the fridge. Its full of things."
  all_drinks = Drink.all
  all_drinks.each_with_index do |drink|
    puts "#{drink.location}"
  end
end
elsif option = 'EXIT' || 'QUIT'
break
end

require_relative 'rovers.rb'
#main
puts "what is your x starting point?"
x_input = gets.chomp.to_i
puts "what is your y starting point?"
y_input = gets.chomp.to_i
puts "what is your staring direction ?"
direction_input = gets.chomp

puts "what is the x max value of your grid ?"
x_grid_input = gets.chomp.to_i
puts "what is the y max value of your grid ?"
x_grid_input = gets.chomp.to_i

puts "where do you want to the rover to go?"
user_array = []
user_array = gets.chomp

rover = Rover.new(x_input, 5, "w")
rover.read_instruction("move")
rover.move

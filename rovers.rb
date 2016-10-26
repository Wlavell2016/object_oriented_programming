	class Rover

		def initialize(x, y, x_grid, y_grid, direction)
			@x_grid = x_grid
			@y_grid = y_grid
			@x = x
			@y = y
			@direction = direction
		end


		def read_instruction
			directions = []
			puts "Where do you want to the rover to go?"
			directions = gets.chomp.upcase
			puts " #{directions}"
			directions.each_char do |x|
				if x == "L"
					turn_left
				elsif x == "R"
					turn_right
				elsif x == "M"
					if (@y + 1) < @y_grid  ||  (@x - 1) < @x_grid
						move
					else
						puts "outside max boundary"
					end
				else
					puts " Enter L or M or R!"
				end
			end
		end


		def turn_left
			if @direction == "N"
				@direction = "W"
			elsif @direction == "W"
				@direction = "S"
			elsif @direction == "S"
				@direction = "E"
			elsif @direction == "E"
				@direction = "N"
			end
		end

		def turn_right
			if @direction == "N"
				@direction = "E"
			elsif @direction == "E"
				@direction = "S"
			elsif @direction == "S"
				@direction = "W"
			elsif @direction == "W"
				@direction = "N"
			end

		end

		def move
			if @direction == "N"
				@y += 1
			elsif @direction == "S"
				@y -= 1
			elsif @direction == "W"
				@x -= 1
			elsif @direction == "E"
				@x += 1
			end
		end

		def report
			puts " your position is #{@x} , #{@y} and facing #{@direction}"
		end
	end

	puts "what is your x starting point?"
	x_input = gets.chomp.to_i
	puts "what is your y starting point?"
	y_input = gets.chomp.to_i
	puts "what is your staring direction ?"
	direction_input = gets.chomp.upcase
	puts "#{direction_input}"

	puts "what is the x max value of your grid ?"
	x_grid = gets.chomp.to_i
	puts "what is the y max value of your grid ?"
	y_grid = gets.chomp.to_i



	rover = Rover.new(x_input, y_input, x_grid, y_grid, direction_input)
	rover.read_instruction
	rover.report

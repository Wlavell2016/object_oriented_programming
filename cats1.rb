	class Cats
			attr_accessor :name
			attr_accessor :preferred_food
			attr_accessor :meal_time

			def initialize(name, preferred_food, meal_time)
				@name = name
				@preferred_food = preferred_food
				@meal_time = meal_time
			end

			def eats_at
				if meal_time > 12
					return meal_time.to_s + "pm"
				else
					return meal_time.to_s + "am"
				end
			end

			def meow
				puts "my name is #{name} and i like to eat #{preferred_food} at #{meal_time} am"
			end
end

	finka = Cats.new('finka','fish',8)
	misha = Cats.new('misha','pork',9)

puts finka.eats_at
finka.name ='butthole'
puts finka.name
puts finka.meow

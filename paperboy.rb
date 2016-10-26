class Paperboy
		attr_accessor :name
		attr_accessor :experience
		attr_reader :earnings

		@@papers = 0.25
		@@min_papers = 50
		@@papers_over = 0.50

		def initialize(name, experience, earnings)
				@name = name
				@experience = experience
				@earnings = earnings
			end

			def quota
				 (experience.to_i * 0.5) + @@min_papers.to_i
			end
=begin
				if experience < 50
					earnings - 2
				end
			end
=end

			def deliver(start_address, end_address)
				 num_dev = (end_address - start_address)
				 if num_dev == quota
					 money = num_dev * 0.25
				 elsif num_dev < quota
					money = (num_dev * 0.25) - 2
				else
					money = ((num_dev - quota) * 0.5) + (quota * 0.25)
				end
				@earnings += money
				@experience = num_dev
			end

			def report
				puts " i am tommy i devliered #{@experience} and made #{@earnings}"
			end
end

	william = Paperboy.new('tyler',0 ,0)
	puts william.quota
	puts william.deliver(100, 200)
	puts william.earnings
	puts william.report

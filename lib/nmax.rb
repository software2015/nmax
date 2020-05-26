require "nmax/version"

module Nmax
  class Error < StandardError; end

	class FilterNumbers
				
		def self.filter(stdin_stream, max_array_size)
			@numbers = []
			@max_array_size = max_array_size.to_i
			number = ""

			stdin_stream.each_line(10000) do |line|
			  line.each_char do |char|
			
			  	if char =~ /[[:digit:]]/
			  		number = number + char
			  	elsif number != "" && char != "\n"
						self.push_to_array(number)
			  		number = ""
			  	end

			  end
			end
			self.push_to_array(number) if number != ""
			return @numbers.sort
		end

		def self.push_to_array(number)
			number = number.to_i
			if @numbers.count == @max_array_size
				@numbers.sort!
				@numbers[0] = number if @numbers[0] < number
			else
				@numbers << number
			end
		end

	end

end
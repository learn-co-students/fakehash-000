require "pry"

class FakeHashWrapper

	def initialize
		@object = Hash.new
	end

	def []=(key, value)
		@key = key.to_sym
		@value = value
		@object[@key] = @value
	end

	def [](key)
		new_key = key.to_sym
	  @object[new_key] 
	end

	def keys
		@object.keys.sort {|a,b| b <=> a }
	end

  def first_letter(letter)
  	answer_array = []
  	@object.each do |key, value|
  		if key.to_s[0] == letter
  			answer_array<<value
  		end
  	end
  	answer_array
  end

  def each
  	@object.each do |k,v|
  		puts v
  	end
  end

end
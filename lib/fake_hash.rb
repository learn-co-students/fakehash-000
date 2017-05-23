require 'pry'

class FakeHashWrapper
	attr_accessor :fake_hash

	def initialize(*splat)
		@fake_hash = {}
	end

	def [](key)
		fake_hash[key.to_sym]
	end

	def []=(key, value)
		@fake_hash[key.to_sym] = value
	end

	def keys
		@fake_hash.keys.sort.reverse
	end

	def first_letter(l)
		array = []
		@fake_hash.each do |key, value|
      	array << value if key[0] == l
		end
		array
	end

	def each
		@fake_hash.each do |k, v|
			yield k, v
		end
	end




end
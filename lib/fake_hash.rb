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
		@fake_hash.each_with_object([]) do |(key, value), array|
      	array << value if key[0] == l
		end
	end

	def each
		@fake_hash.each do |k, v|
			yield k, v
		end
	end




end
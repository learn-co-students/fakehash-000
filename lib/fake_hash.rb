require 'pry'
class FakeHashWrapper

  attr_accessor :channels
  # write code here
  def initialize
    @channels = {}
  end

  def[]=(k, y)
    #creates the hash
    k_symbol = k_symbol.to_sym
    @channels[k] = y
  end

    def []=(key, value)
    @key = key.to_sym
    @value = value
    @channels[@key] = @value
  end

  def[](key)
    #returns the hash by key
    symbol_key = key.to_sym
    @channels[symbol_key]
  end

  def keys
    @channels.keys.sort.reverse #descending order
  end

  def first_letter(letter)
    result_array = []
    @channels.each do |key, value|
        if key[0] == letter
          result_array << value
        end
      end
      result_array
  end

  def each

    @channels.each {|i| yield i}

  end


end
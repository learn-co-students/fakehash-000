require 'pry'
class FakeHashWrapper

  def initialize
    @hash = {}
  end

  def [](key)
    @hash[key.to_sym]
  end

  def []=(key, value)
    @hash[key.to_sym] = value
  end

  def keys
    array = @hash.keys.sort.reverse
  end

  def first_letter(letter)
    arr = []
    @hash.each do |key, value|
      if key.to_s.start_with?(letter)
        arr << value
      end
    end
    arr
  end

  def each
    @hash.each {|k, v| yield k, v}
  end
end
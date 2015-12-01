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
    @hash.keys.sort.reverse
  end

  def first_letter(letter)
    array = []
    @hash.each {|key, value| key.to_s.start_with?(letter) ? array << value : nil}
    array
  end

  def each
    @hash.each {|k| yield k}
  end
end
require 'pry'

class FakeHashWrapper

  def initialize
    @fake_hash = {}  
  end

  def []=(key, value)
    @fake_hash[key.to_sym] = value
  end

  def [](key)
    @fake_hash[key.to_sym]
  end

  def keys
    @fake_hash.keys.sort.reverse
  end

  def first_letter(letter)
    letter_array = []
    @fake_hash.each{|key, value|
      if key.to_s.split("").first == letter
        letter_array << value
      end
    }
    letter_array
  end

  def each(&block)
    @fake_hash.each(&block)
  end

end
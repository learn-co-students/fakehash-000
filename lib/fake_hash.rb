class FakeHashWrapper
  require 'ostruct'
  attr_accessor :key, :value

  def initialize
    @my_hash = {}
  end

  def [](key)
    if key.is_a? String
      key = key.intern
      @my_hash[key]
    else
      @my_hash[key]
    end
  end

  def []=(key, value)
    if key.is_a? String
      key = key.intern
      @my_hash[key] = value
    else
      @my_hash[key] = value
    end
  end

  def keys
    arr = []
    @my_hash.each do |k,v|
      arr << k
    end
    arr.sort.reverse
  end

  def first_letter(letter)
    arr = []
    @my_hash.each do |k,v|
      if k.to_s.split("")[0] == letter
        arr << v
      end
    end
    return arr
  end

  def each
    arr = @my_hash.to_a
    i = 0
    while i < arr.length
      yield(arr[i])
      i += 1
    end
  end

end

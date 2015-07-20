
class FakeHashWrapper < Hash

  def initialize(keysss = nil)
    @keysss = keysss.to_s
    super
  end

  def [](key)
    super(key.to_s)
  end

  def []=(key, value) 
    super(key.to_s, value)
  end

  def keys
    super.sort {|a,b| b <=> a}
  end

  def first_letter(letter)
  this = keys.select {|thisKey| thisKey.to_s.start_with?(letter) }
  this.collect {|item| values_at(item) }.flatten
  end

  def store(key, value)
    super(key.to_s, value)
    super
  end
end
class FakeHashWrapper

  # write code here
  def initialize
    @f = {}
  end
  
  def [](key)
    @f[key.to_sym]
  end
  
  def []=(key, value)
    @f[key.to_sym] = value
  end
  
  def keys
    arr = @f.keys
	arr.map!{|e| e.to_s}.sort!{|a,b| b <=> a}
	arr.map!{|e| e.to_sym}
  end
  
  def first_letter(letter)
    @f.each_with_object([]) do |(key, val), arr| 
	  arr << val if key.to_s[0] == letter
	end
  end
  
  def each
    @f.each { |k,v| yield k, v }
  end
end
class Temperature
 
 def initialize(options = {})  #Initialized with options hash
   if options.include?(:f)
     @cdegree = ((options[:f]) - 32) * 5.0 / 9 #Formula to convert F to C
   end
   if options.include?(:c)
     @cdegree = options[:c]
   end
 end
 
 def in_fahrenheit
   f = ((@cdegree * 9.0) / 5) + 32 #Formula to convert C to F
 end
 
 def in_celsius
   @cdegree
 end
 
 def self.from_celsius(cel)
   Temperature.new(:c => cel)
end
 
 def self.from_fahrenheit(fah)
   Temperature.new(:f => fah)
 end
end

class Celsius < Temperature

  def initialize(cel)
    super(:c => cel) #Inherits assignment from Temperature class
  end
end

class Fahrenheit < Temperature
  def initialize(fah)
    super(:f => fah) #Inherits assignment from Temperature class
  end
end
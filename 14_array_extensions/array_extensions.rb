class Array

 attr_accessor :sum #Allow sum to be accessed by hash

 def initialize(options = {})
  @array
 end
 
 def sum
  if self.empty? #Check if array is empty when running sum method
   0
  else
   x = 0
   self.each do |y| #Add each array term into sum variable x
    x += y
   end
   x #Return sum
  end
   
  end
  
  def square
   if self.empty? #Check if array is empty when running square method
    [] #Returns empty array

    else
     x = [] #Created new empty array
     self.each do |y|
     x.push(y * y) #Push squared terms to x array
     end
     x #Return x array after adding squared terms
     end
   end
  
   def square! #Similar to square method but alters original array values rather than creating new array
    self.map! do |y| 
    y**2
    end
   end
  
  end

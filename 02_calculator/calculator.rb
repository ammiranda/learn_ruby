def add(x,y) #Method to add two numbers together
 b = x + y
 b
 end 

def subtract(x,y) #Method to subtract a number from the first term
 b = x - y
 b
 end

def sum(x)
 sum = 0
 i = 0
 if x == []
  0
  end
 while i < x.count #Used to iterate through all of the array's elements
  sum += x[i] #Sums the array elements together
  i += 1 #Iterate counter variable
  end
  sum
  end



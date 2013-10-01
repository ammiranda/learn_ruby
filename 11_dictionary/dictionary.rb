class Dictionary
 attr_accessor :entries
 
 def initialize
  @entries = {} #Set entries variable to an empty dictionary
 end
 
 def keywords
  @entries.keys.sort #Sort key values into alphabetical order
 end
 
 def add(x)
  if x.is_a?(String) #Check if x is a string
   @entries[x] = nil 
  else
   x.each do |key, value| 
   @entries[key] = value
   end
  end
 end
 
def include?(x)
 if @entries.keys.include?(x)
  true
 else
  false
 end
end

def find(x)
 answer = {}
  @entries.each do |key, value|
   if key[0...x.length] == x
    answer[key] = value
   end
   if x[0..1] == key[0..1]
    answer[key] = value
   end
   end
   answer
 end 

def printable
 a = @entries.sort.map do |key, value|
 "[#{key}] \"#{value}\""
 end

a.join("\n")
end
 
end

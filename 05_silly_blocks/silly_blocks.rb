def reverser
 b = yield.split.map{|x| x.reverse}.join(" ") #Splits block then reverses words then recombines words back into single string
 b #Returns altered string
 end

def adder(a = 1) #Set parameter to value of default block unless parameter was passed in
 result = a + 5 #Adds passed parameter to 5
 result #Returns sum
 end
 
def repeater(n = 1, &block) 
 n.times &block
end
class RPNCalculator
 
 attr_accessor :calculator
 
 def initialize()
  @calculator = []
 end
 
 def push(x)
  @calculator << x #Pushes x to @calculator array
 end
 
 def value
  @calculator.last #Returns the last term in the @calculator array
 end
 
 def plus
  if @calculator.size >= 2
   sum = @calculator.pop + @calculator.pop #Removes last two elements of the @calculator array and then adds them together 
   @calculator << sum #Pushes the sum to the calculator array
  else
   raise "calculator is empty" #Passes error if length of @calculator array is less than 2
  end
 end
 
 def minus 
  if @calculator.size >= 2
   first = @calculator.pop  #Removes first term from array and then second
   second = @calculator.pop 
   difference = second - first #Assigned terms to variables to ensure proper order of subtraction
   @calculator << difference #Pushed difference variable to @calculator array
  else
   raise "calculator is empty" #Passes error if length of @calculator array is less than 2
  end
 end
 
 def divide
  if @calculator.size >= 2 
   a = @calculator.pop.to_f #Remove last term from array and then convert term to be a floating point number
   b = @calculator.pop.to_f
   c = b / a #Dividing second to last term by last term in the @calculator array
   @calculator << c #Pushes result of division to the @calculator array
  else
   raise "calculator is empty"
  end
 end
 
 def times
  if @calculator.size >= 2
   a = @calculator.pop.to_f
   b = @calculator.pop.to_f
   c = a * b
   @calculator << c
  else
   raise "calculator is empty"
  end
 end
 
 def tokens(x)
  a = x.split(" ") #Breaks string into words as elements of an array
  b = a.collect do |c| #Collect all of the array's elements and converts them into operands or integers
   if (c == "+" || c == "-" || c == "*" || c == "/") #Check if term collected is an operand
    c.to_sym #Change string of operand back to functional operand
   else
    c.to_i #Change string of number back to integer
   end
  end
  b #Return token array
end

def evaluate(b) #Used to evaluate expressions that are passed in using hashes for operands
  tokens(b).each do |t|
    if t == :+
     self.plus
    elsif t == :-
     self.minus
    elsif t == :/
     self.divide
    elsif t == :*
     self.times
    else
     self.push(t)
     end
  end
    self.value
end
end
class Friend #Create class Friend
 def greeting(x = "Hello!") #Define greeting method with default parameter as "Hello!"
   p = x.to_s #Converts all inputted values into strings if they were not initially
  if p != "Hello!" #Check if inputted value is not "Hello!"
   "Hello, " + p + "!" #Amend greeting to inputted string and return it
  else
  "Hello!" #When p = "Hello!" just return it as is
  end
 end
end
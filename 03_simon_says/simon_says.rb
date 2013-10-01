def echo(x = hello) #Returns passed parameter as a string, with default set to hello 
 x.to_s #Converts all inputs into strings and then returns them
 end
 
def shout(x = hello)
 x.to_s.upcase #Converts all inputs into strings, uppercases all the letters then returns the word
end

def repeat(x = hello, n = 2) #Repeats first parameter as a string the number of times entered for the second parameter
 m = x.to_s #Initial word
 p = ' ' + x.to_s #Constructor variable
 if n == 0 #Checks if n = 0 and outputs empty string as result
  ans = ''
  ans
  end
 ans = m + (p * (n - 1)) #Expression to construct desired string based on entered parameters
 ans
end

def start_of_word(x = hello, n = 1)
 m = x.to_s
 m[0..n-1] #Returns start of string from first letter until desired stop. Subtract 1 from n to so it matches to needed index number.
 end

def first_word(x = hello) 
 m = x.to_s
 p = m.split(/\s/) #Split the inputted string's words into an array 
 p[0] #Returns first word in array p
 end


def titleize(x)
  m = x.to_s
  unwanted_words = %w{the of a an and over} #Collection of words that would not be capitalized in title
  if m.split.count == 1
   m.capitalize
  end #Code below splits string into an array and then capitalizes words not in unwanted_words while capitalizing the first word regardless
   m.split.each_with_index.map{|i, index| unwanted_words.include?(i) && index > 0 ? i : i.capitalize!}.join(" ")
 end
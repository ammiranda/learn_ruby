def translate_word(a)
  alpha = ('a'..'z').to_a #Converts alphabet string to an array
  vowels = %w[a e i o u] #Array containing only vowel letters
  consonants = alpha - vowels #Removing vowels from alpha array leaving only consonants
  word_array = a.split #Splits the inputted string into an array where the elements are the string's letters
  

  if vowels.include?(a[0]) #Checks if leading letter is a vowel
    a + 'ay'
  elsif a.include?('qu') #Checks if inputted string contains 'qu'
   front, back = a.match(/(.*qu)(.*)/).captures #Captures 'qu' and anything preceding it and assigns that string to variable front
   "#{back}#{front}ay"                          #and then captures what remains and assigns that to variable back
  elsif consonants.include?(a[0]) && consonants.include?(a[1]) && consonants.include?(a[2])
   a[3..-1] + a[0..2] + 'ay' #Checking if consonants make up the first three letters or less and outputting rule appropriate strings
  elsif consonants.include?(a[0]) && consonants.include?(a[1])
    a[2..-1] + a[0..1] + 'ay'
  elsif consonants.include?(a[0])
    a[1..-1] + a[0] + 'ay'
  else
    a # return unchanged
  end
end

def translate(a)
 a.split.map { |x| translate_word(x) }.join(" ") #Allows for multiple word translating
end
  
 
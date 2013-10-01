class Book

 def title()
   @title
 end
 
 def title=(title)
  @title=capitalize_title(title)
 end
 
 def capitalize_title(title)
  common_words = ["in", "a", "an", "and", "the", "of"] #Common words to exclude for capitalization
  cap_title = [] #Empty array to accept the newly capitalized words
  input_title = title.split(" ") #Split title string into word array
         input_title.each do |input_title|
         input_title.capitalize! unless common_words.include?(input_title)
         cap_title << input_title #Push capitalized words from input_title to the cap_title array
         end
         cap_title[0].capitalize! #Capitalize the first word in the array even if common_word
         cap_title.join(" ") #Recombine the array elements into a single string
  end
 
end


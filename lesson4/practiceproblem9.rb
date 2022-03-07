words = "the flintstones rock"


  separate = words.split
  
  caps_words = separate.map do |word|
    word.capitalize!
  end 
  
  p caps_words.join(" ")
  
  


  
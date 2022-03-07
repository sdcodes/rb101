statement = "The Flintstones Rock"
character_hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end 

  


#break string into individual characters
#group base on character
#have count for each character
#add to hash
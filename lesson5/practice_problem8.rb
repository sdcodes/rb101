hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
       third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

just_vowels = []
vowels = "aeiou"
  hsh.each do |_, value|
    value.each do |word|
      word.chars.each do |letter|
        puts letter if vowels.include?(letter)
      end 
    end 
  end 
          
        
      
    
     
     
   
  

    
    
# input: hash 
#output: vowels in the strings
#1 - access the values of the hash
#2 - iterate and select only the vowels
#3 - have ouput be only the vowels
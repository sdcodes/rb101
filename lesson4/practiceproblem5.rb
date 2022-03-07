flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |syllable| syllable[0, 2] == "Be" } 

#have string - iterate over
#focus on beginning of each word
#words with "be" must be selected
#find first incident of "be"
#what is the index number
#return index number
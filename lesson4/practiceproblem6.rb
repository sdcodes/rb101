
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

cut_three = flintstones.map do |name|
  name[0, 3] 
end 

p cut_three 


#OR

p flintstones.map! { |n| n[0, 3] }
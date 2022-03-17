munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = munsters["Herman"]["age"] + munsters["Eddie"]["age"] 
#OR 

ages = [] 
munsters.select do |person, traits|
  if traits["gender"] == "male"
    ages << traits["age"]
  end 
end

total_ages = ages.sum


    
    
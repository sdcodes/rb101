ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


def min_age(hash)
  allages = hash.values.sort
  
  allages[0]
end 

p min_age(ages)

#group ages together
#compare all ages
#list ages smallest to largest
#have smallest on its own
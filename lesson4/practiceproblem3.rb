ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }


under100 = ages.delete_if { |name, age| age >= 100 }

p under100

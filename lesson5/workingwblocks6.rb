 [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

#w/ hash.all => changing the values[0] - 'ant' == "a" ; 'ele..'!= 'b', 'cat'== 'c'
#hash.all? will give us a false as return value
#select will use the false for its return value - will return empty array
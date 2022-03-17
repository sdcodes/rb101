books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by { |hash| hash[:published] }


#input: array with hashes - years of publishment
#ordered array - based on published year
#how to locate each published year in each individual hash in array
#compare each year(integer) and sort - earliest to latest
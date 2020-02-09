$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  
   result = []
   directors_index = 0 
   directors_list = source.length

   while directors_index < directors_list do  
     result << source[directors_index][:name]
     directors_index += 1 

   end
   result
  
end

def total_gross(source)
  
  directors_hash = directors_totals(source)
  directors_names = list_of_directors(source)
  running_total = 0
  index = 0
  while index < list_of_directors.length do
    dir_name = directors_names[index]
    running_total += directors_hash[dir_name]
    index += 1
  end
  return 5
end



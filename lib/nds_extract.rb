$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  names = []
  director_index = 0
  while director_index < source.size do
    names << source[director_index][:name]
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
  
  list = []
  index = 0
  while index < source.length do
    list << source[index][:name]
    index += 1
  end
  return list
  
end

def total_gross(source)
  # Write this implementation
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running tota
  #When done,
  # return the total
  
  directors_hash = directors_totals(source)
  directors_names = list_of_directors(source)
  running_total = 0
  index = 0
  while index < list_of_directors.length do
    dir_name = directors_names[index]
    running_total += directors_hash[:name]
    index += 1
  end
  return running_total
end



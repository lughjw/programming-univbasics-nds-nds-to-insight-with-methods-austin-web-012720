$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #pp(director_data)
  
  #iterate through each movie and add that movie's worldwide gross to the director's gross
  
  director_gross = 0
  director_data[:movies].each do |movie_data|
    director_gross += movie_data[:worldwide_gross]
  end
  
  director_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  # pp(nds)
  result = {}
  
  nds.each do |director_data|
    result[director_data[:name]] = gross_for_director(director_data)
  end
  
  result
end

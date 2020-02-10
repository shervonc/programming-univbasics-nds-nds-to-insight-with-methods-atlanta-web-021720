$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp director_data
t_index = 0
director_totals = 0 

while t_index < director_data[:movies].length do
  director_totals += director_data[:movies][t_index][:worldwide_gross]
  t_index += 1
end
director_totals
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  
  result = {}
  d_index = 0
  while d_index < nds.length do
      dir = nds[d_index]
    result[dir[:name]] = gross_for_director(dir)
      d_index += 1
  end
  result
end

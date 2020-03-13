$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  inner_index = 0
  total = 0
  
  while inner_index < director_data[:movies].length do 
    total += director_data[:movies][inner_index][:worldwide_gross]
    inner_index += 1
  end 
  
total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  result = {}
  row_index = 0
  
  while row_index < nds.length do
    result[nds[row_index][:name]] = gross_for_director(nds)
    row_index += 1

  end
  result
  
end

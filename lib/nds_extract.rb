require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  result = {}
  row_index = 0

  while row_index < nds.length do
    column_index = 0
    total_gross = 0
    while column_index < nds[row_index][:movies].length do
      total_gross += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    result[nds[row_index][:name]] = total_gross
    row_index += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_director_gross = 0
  new_idx = 0
  while new_idx < director_data[:movies].length do
    total_director_gross += director_data[:movies][new_idx][:worldwide_gross]
    new_idx += 1
  end
  return total_director_gross
end

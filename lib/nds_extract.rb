$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.each do |director_info|
    director_name = director_info[:name]
    total_director_gross = gross_for_director(director_info[:movies])
    result[director_name] = total_director_gross
  end
  result
end

#directors_totals(directors_database)
directors_totals(directors_database)

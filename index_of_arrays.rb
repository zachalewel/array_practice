#!/usr/bin/env ruby

def index_of_first_uniq(array)
  counts = Hash.new(0)
  puts counts
  array.each{|i| counts[i]+= 1}
  array.each_with_index do |number,index|
    return index if counts[number] == 1
  end
  return nil
end
array = [2, 4, 3, 2, 5, 9, 4, 1]
puts index_of_first_uniq(array)

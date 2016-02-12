#!/usr/bin/env ruby

def first_unique_index(array)
  unique_keys = []
  Hash[array.group_by { |i| i }].each { |key, value|
    if value.length == 1
      unique_keys << array.index(key)
    end }; puts unique_keys.first
end

first_unique_index([1, 2, 3, 5, 1, 3, 3, 2, 3, 3, 3, 4, 5, 5])

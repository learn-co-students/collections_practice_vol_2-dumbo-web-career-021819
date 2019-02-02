# your code goes here
require 'pry'
def begins_with_r(array)
  i = 0
  while i < array.length
    if array[i].start_with?("r")
      i += 1
    else
      return false
    end
  end
  true
end

def contain_a(array)
  i = 0
  a_array = []
  while i < array.length
    a_array << array[i] if array[i].include?("a")
    i += 1
  end
  a_array
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|item| item.to_s != item}
end

def count_elements(array)
  uniq_array = array.uniq
  uniq_array.each do |thing|
    thing[:count] = 0
  end
  i = 0
  while i < uniq_array.length
    x = array.find_all {|item| item[:name] == uniq_array[i][:name]}
    uniq_array[i][:count] = x.size
    i += 1
  end
  uniq_array
end

def merge_data(array1, array2)
  new_hashes = []
  array2.each do |item|
    item.each {|key, value| new_hashes.push(value)}
  end
  i = 0
  while i < array1.length
    array1[i].merge!(new_hashes[i])
    i += 1
  end
  array1
end

def find_cool(hashes)
  cool_list = []
  hashes.each do |item|
    cool_list.push(item) if item[:temperature] == "cool"
  end
  cool_list
end

def organize_schools(schools)
  organized_schools = Hash.new
  schools.each do |school, myst_location|
    organized_schools[myst_location[:location]] = []
  end
  schools.each do |school, myst_location|
    if organized_schools.include?(myst_location[:location])
      organized_schools[myst_location[:location]].push(school)
      organized_schools[myst_location[:location]].sort
    end
  end
  organized_schools
end

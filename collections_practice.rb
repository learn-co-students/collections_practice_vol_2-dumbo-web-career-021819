# your code goes here
def begins_with_r(array)
 array.all? do |item|
   item[0] == 'r'
 end
end

def contain_a(array)
  array.select do |item|
   item.include?('a')
  end
end

def first_wa(array)
 array.find do |item|
   item[0] == 'w' && 'a'
 end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.is_a?(String) == false
  end
end
#=============HASHES===================HASHES===============================
def count_elements(array) #=> count how many times something appears in an array
  array.uniq.each {|item| counter = 0
      array.each {|item_a| if item_a == item then counter += 1 end}
      item[:count] = counter}
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

 def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}}
end

 def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end

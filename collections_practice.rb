# your code goes here
def begins_with_r(array)
  comp_array = []
  array.each do |element|
    if !!element.start_with?("r")
      comp_array << element
    end
  end
  if comp_array.length == array.length
    return true
  else
    return false
  end
end

def contain_a(array)
  comp_array = []
  array.each do |element|
    if !!element.include?('a')
      comp_array << element
    end
  end
  return comp_array
end

def first_wa(array)
 array.find do |element|
   element.to_s.start_with?("wa")
 end
end

def remove_non_strings(array)
  filler = []
  array.each do |element|
    if element.is_a?(String)
      filler << element
    end
  end
  return filler
end

def count_elements(array)
  array.uniq.each do |key|
    counter = 0
    array.each do |value|
      if value == key
        counter += 1
      end
    end
    key[:count] = counter
  end
end

def merge_data(data_1, data_2)
  data_1.each do |keys|
    temp= keys[:first_name]
    keys
    other_key = data_2[0][temp]
    other_key.each do |key, value|
      keys[key] = value
    end
  end
end

def find_cool(hash)
  cool_array = []
  cool_hash= {}
  hash.each do |nest|
    nest.each do |key, value|
      cool_hash[key] = value
      if value == "cool"
        cool_hash[:name] = nest[:name]
      else
        cool_hash = {}
      end
    end
  end
  cool_array << cool_hash
end

def organize_schools(schools)
  loc_schools = {}
  schools.each do |school, location|
  location.each do |key, value|
    if  !loc_schools.key?(value)
      loc_schools[value] = [school]
    else
      loc_schools[value] << school
    end
  end
end
loc_schools
end
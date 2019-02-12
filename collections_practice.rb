# your code goes here
def begins_with_r(array)
  if array.all? {|x| x.start_with?("r")}
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select {|x| x.include?("a")}
end

def first_wa(array)
  array.find {|x| x[0] == "w" && x[1] == "a"}
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

def count_elements(array)
  array.uniq.map do |person|
    {:name => person[:name], :count => array.count(person)}
  end
end

def merge_data(keys, data)
  #maybe a deep_merge might work here?
  new_array = []
  keys.each do |key|
    data.each do |info|
      info.each do |data_key, data_value|
        if data_key == key[:first_name]
          new_array << key.merge(data_value)
        end
      end
    end
  end
  new_array
end

def find_cool(cool)
  cool.select do |x|
    x.any? do |key, value|
      value == "cool"
    end
  end
end

def organize_schools(schools)
  result = {}
  schools.map do |school, location|
    school_location = location[:location]
    if !result[school_location]
      result[school_location] = []
      result[school_location] << school
    else
      result[school_location] << school
    end
  end
  return result
end

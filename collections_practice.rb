# your code goes here

def begins_with_r(array)
  !array.any? do |name|
    !name.start_with?("r")
  end
end

def contain_a(array)
  array.select do |name|
    name.split("").include?("a")
  end
end

def first_wa(array)
  array.find do |name|
    name.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |name|
    name.class != "".class
  end
end

def count_elements(array)
  result = Array.new
  array.each do |item|
    match = false
    result.each do |element|
      if item == element.reject{|k| k == :count}
        match = true
        element[:count] += 1
      end
    end
    if !match
      item[:count] = 1
      result << item
    end
  end
  result
end

def merge_data(keys, data)
  keys.each do |obj|
    data.each do |person|
      person.each do |name, attributes|
        if obj[:first_name] == name
          attributes.each do |key, value|
            obj[key] = value
          end
        end
      end
    end
  end
end

def find_cool(array)
  result = Array.new
  array.each do |person|
    person.each do |key, value|
      if key == :temperature && value == "cool"
        result << person
      end
    end
  end
  result
end

def organize_schools(schools)
  result = Hash.new
  schools.each do |name, location_hash|
    match = false
    result.each do |location, schools_array|
      if location == location_hash[:location]
        match = true
        schools_array << name
      end
    end
    if !match
      result[location_hash[:location]] = [name]
    end
  end
  result
end

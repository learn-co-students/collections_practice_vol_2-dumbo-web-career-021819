
def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end


def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end


def first_wa(array)
  array.collect do |element|
    element.to_s
  end
  # array is now full of strings
  array.find do |element|
    element[0..1] == "wa"
  end
end


def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end


def find_cool(cool)
  array = []
  cool.each do |hash|
    if hash[:temperature] == "cool"
      array << hash
    end
  end
  array
end


def count_elements(array)
  array.uniq.each do |hash|
    count = 0
    array.each do |other_hash|
      if hash == other_hash
        count += 1
      end
    end
    hash[:count] = count
  end
end


def merge_data(keys, data)
	merged_data = []
  keys.each do |hash|
    data.first.collect do |key, value|
      if hash.values.first == key
        merged_data << hash.merge(value)
      end
    end
  end
  merged_data
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location|
    location.each do |key, value|
      organized_schools[value] = []
    end
  end
  schools.each do |name, location|
    location.each do |key, value|
      organized_schools[value] << name
    end
  end
  organized_schools
end


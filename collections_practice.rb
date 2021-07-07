# your code goes here

def begins_with_r(arr)
  arr.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(arr)
  arr.select do |word|
    word.include?("a")
  end
end

def first_wa(arr)
  arr.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(arr)
  arr.delete_if do |ele|
    ele != ele.to_s
  end
end

def count_elements(arr)
  final_arr = []
  counts = arr.group_by{|name|name[:name]}.map{|name,num|[name,num.count]}
  counts.each do |name, num|
    final_arr << {:name => name, :count => num}
  end
  return final_arr
end


def merge_data(keys, data)
  keys.each do |hash|
    name = hash[:first_name]
    puts hash
    data_hash = data[0][name]

    data_hash.each do |description,value|
      hash[description] = value
    end
  end
end


def find_cool(cool)
  final_hash = {}
  cool.each do |hash|
    hash.each do |title, descript|
      if title == :temperature && descript == "cool"
        final = [hash]
        puts final
        return final
      end
    end
  end
end

def organize_schools(schools)
  final_hash = {}
  schools.each do |school, location_hash|
    location = location_hash.values[0]
      if final_hash.keys.include?(location)
        final_hash[location] << school
      else
        final_hash[location] = [school]
      end
  end
  final_hash
end

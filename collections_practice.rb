require 'pry'
def begins_with_r(array)
  array.each do |item|
    if item[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  temparray = []
  array.each do |item|
    if item.include?("a")
      temparray.push(item)
    end
  end
  temparray
end

def first_wa(array)
  array.each do |item|
    if item[0..1] == "wa"
      return item
    end
  end
end

def remove_non_strings(array)
  temparray = []
  array.each do |item|
    if item.class == String
      temparray.push(item)
    end
  end
  temparray
end

def count_elements(array)
  temparray = []
  array.each do |hash|
    if ! temparray.include?(hash)
      temparray << hash
    end
  end
  temparray.each {|x| x[:count] = 0}
  temparray.each do |counthash|
    array.each do |hash|
      if hash[:name] == counthash[:name]
        counthash[:count] += 1
      end
    end
  end
  temparray
end

def merge_data(array1, array2) # arrays of dictionaries
  temparray = []
  count = 0
  array1.each do |hash|
    temparray << hash
  end
  array2.each do |onearray|
    onearray.each do |hash|
      hash.each do |key, value|
        if key.class == Hash
          temparray[count] = key.merge(temparray[count])
          count +=1
        end
      end
    end
  end
  temparray
end

def find_cool(array)
  temparray = []
  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        temparray << hash
      end
    end
  end
  temparray
end

def organize_schools(hash)
  temphash = {}
  hash.each do |key, value|
    if ! temphash.keys.include?(value[:location])
      temphash[value[:location]] = [key]
    else
      temphash[value[:location]] << key
    end
  end
  puts temphash.sort
  temphash
end

def organize_school(hash)
  temp = {}
  hash.each do |key, value|
    if temp.keys.include?(value[:location])
      temp[value[:location]] << key
    else
      temp[value[:location]] = key
    end
  end

  puts temp
  temp.class
end

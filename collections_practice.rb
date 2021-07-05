# your code goes here
require 'pry'
def begins_with_r(arr)
i = 0
testcase = false
  while i < arr.length
    if arr[i].start_with?("r")
      testcase = true
    else
      testcase = false
    end
    i += 1
  end
  testcase
end

def contain_a(arr)
  i = 0
  testcase = []
    while i < arr.length
      if arr[i].include?("a")
        testcase << arr[i]

      end
      i += 1
    end
    testcase

end

def first_wa(arr)
  i = 0
  testcase = ""
    while i < arr.length
      if arr[i].to_s.start_with?("wa")
        testcase << arr[i]
        break
      end
      i += 1
    end
    testcase
end

def remove_non_strings(arr)
  i = 0
  testcase = []
    while i < arr.length
      if arr[i].is_a?(String)
        testcase << arr[i]
        break
      end
      i += 1
    end
    testcase
end

def count_elements(arr)
  arr.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys,data)
data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end

def find_cool(arr)
return_array = []
arr.each do |x|
  x.each do |key,value|
    if value == "cool"
      return_array << x
    end
  end
end
return_array
end

def organize_schools(hash)
newHash ={}
hash.each do |k,v|
  v.each do |location,city|
  newHash[city] = []
end
end
hash.each do |k,v|
  v.each do |location,city|
  newHash[city].push(k)
end
end
newHash
end

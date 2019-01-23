# your code goes here
def begins_with_r(tools)
  tools.all? { |letter| letter.start_with?('r') }
end

def contain_a(elements)
  elements.select { |letter| letter.include?('a') }
end

def first_wa(array)
  array.find { |letters| letters.match(/wa/) }
end

#def first_wa(array)
  #array.each do |letters|
    #if letters.to_s.start_with?('wa')
      #return letters
    #end
  #end
#end

def remove_non_strings(not_string)
  not_string.delete_if { |value| !(value.is_a? String) }
end

def count_elements(names)
  names.each do |key|
    key[:count] = 0
    x = key[:name]
    names.each do |new|
      if new[:name] == x
        key[:count] += 1
      end
    end
  end.uniq
end

#def count_elements(names)
  #names.group_by(&:itself).map { |key, value| key.merge(count: value.length) }
#end

def merge_data(keys, data)
  keys.each do |x|
    data.each do |new|
      x.merge!(new[x[:first_name]])
    end
  end
end

def find_cool(cool)
  temp = []
  cool.each do |x|
    if x[:temperature] == 'cool'
      temp << x
    end
  end
  temp
end

#def find_cool(cool)
  #cool.select do |x|
    #if x.has_value?("cool")
      #x
    #end
  #end
#end

def organize_schools(schools)
  new_hash = {}

  schools.each do |name, locations|
    city = locations[:location]
    if new_hash[city]
      new_hash[city] << name
    else
      new_hash[city] = []
      new_hash[city] << name
    end
  end
  new_hash
end

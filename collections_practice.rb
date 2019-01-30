def begins_with_r(arr) 
    arr.each do |item|
    if item.start_with?("r")
      next
    else
      return false 
    end 
  end 
  return true 
end 



def contain_a(arr) 
  newarr = []
  
  arr.each do |thing|
    if thing.include?("a")
      newarr << thing 
    end 
  end 
  newarr 
end 



def first_wa(arr) 
  arr.each do |item|
    if item.to_s.start_with?("wa")
      return item 
    end 
  end 
end 


def remove_non_strings(arr) 
  newarr = [] 
  arr.each do |item|
    if item.is_a?(String)
      newarr.push(item)
    end 
  end 
  newarr  
end 


def count_elements(arr) 
  hash= Hash.new(0)
  newarr = []
  
  arr.each do |name|
    hash[name] += 1
  end 
  
  hash.each do |key, value|
    newarr.push(:count => value, :name => key[:name])
  end 
  newarr 
end 

def merge_data(keys, data)
  new_arr = []  
  keys.each_with_index do |kl1, index|
    kl1.each do |kl2, kl3|
      data.each do |dl1|
        dl1.each do |dl2, dl3| 
          if dl2 == kl3 
            new_arr << dl3.merge!(kl1)
          end 
        end 
      end 
    end 
  end 
new_arr
end  

def find_cool(arr) 
  cool_ppl = []
  arr.each do |entry|
    entry.each do |key, value|
      if value == "cool"
        cool_ppl << entry
      end
    end 
  end 
  return cool_ppl
end 

def organize_schools(arr) 
  lets_hope = {}
  arr.each do |school, object|
    object.each do |key, value|
      lets_hope[value] = []  
    end 
  end 

  lets_hope.each do |city, school|
    arr.each do |school, object|
      object.each do |key, value|
        lets_hope[city] << school if value == city
      end 
    end 
  end 
  lets_hope
end 










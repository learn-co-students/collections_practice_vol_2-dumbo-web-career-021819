def begins_with_r(arr)
  arr.all?{ |word| word.start_with?('r') }
end
  
def contain_a(arr)
  arr.select{ |word| word.include?("a")}
end

def first_wa(arr)
  arr.find{ |obj| obj.to_s.start_with?('wa')}
end

def remove_non_strings(arr)
  arr.select{ |obj| obj.is_a?(String) }
end

def count_elements(arr)
  arr = arr.map do |element|
    num_of_occurrences = arr.count(element)
    count_hash = {:count => num_of_occurrences}
    element = count_hash.merge(element)
  end
  arr.uniq!
end

def merge_data(data1,data2)
  concat_arr = data1.concat(data2)
  blake_hash = concat_arr[2]["blake"].merge(concat_arr[0])
  ashley_hash = concat_arr[2]["ashley"].merge(concat_arr[1])
  blake_hash.delete(:first_name)
  ashley_hash.delete(:first_name)
  blake_hash = blake_hash.sort   
  ashley_hash = ashley_hash.sort
  blake_hash = blake_hash.to_h
  ashley_hash = ashley_hash.to_h
  new_blake_hash = {:first_name=>"blake"}
  new_ashley_hash = {:first_name=>"ashley"} 
  new_blake_hash = new_blake_hash.merge(blake_hash)
  new_ashley_hash = new_ashley_hash.merge(ashley_hash)
  answer_array = []
  answer_array.push(new_blake_hash)
  answer_array.push(new_ashley_hash)
  return answer_array
end

def find_cool(hash_inside_array)
  cool_hash = []
  hash_inside_array.each do |hash|
    if hash[:temperature] == "cool"
      cool_hash.push(hash)
    end
  end
  return cool_hash
end

def organize_schools(schools_hash)
  nyc_hash = {"NYC" => []}
  sf_hash = {"SF" => []}
  chicago_hash = {"Chicago" => []}
  
  schools_hash.each do |school, location_hash|
    if location_hash[:location] == "NYC"
      nyc_hash["NYC"] << school
    elsif location_hash[:location] == "SF"
      sf_hash["SF"] << school
    elsif location_hash[:location] == "Chicago"
      chicago_hash["Chicago"] << school
    end
  end
  
  org_schools_hash = nyc_hash.merge(sf_hash)
  org_schools_hash.merge!(chicago_hash)
  return org_schools_hash
end

#let(:schools) {
#    {
#      "flatiron school bk" => {
#        :location => "NYC"
#      },
#      "flatiron school" => {
#        :location => "NYC"
#      },
#      "dev boot camp" => {
#        :location => "SF"
#      },
#      "dev boot camp chicago" => {
#        :location => "Chicago"
#      },
#      "general assembly" => {
#        :location => "NYC"
#      },
#      "Hack Reactor" => {
#        :location => "SF"
#      }
#    }
#  }


# let(:organized_schools) {
#    {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#     "SF"=>["dev boot camp", "Hack Reactor"],
#     "Chicago"=>["dev boot camp chicago"]}
#  }
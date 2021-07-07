def begins_with_r(tools)
  tools.all? {|x| x.start_with? "r"}
end

def contain_a(elements)
  elements.select {|x| x.include? "a"}
end

def first_wa(elements)
  elements.find {|x| x[0...2] == "wa"}
end

def remove_non_strings(elements)
  elements.reject {|x| !x.is_a?(String)}
end

def count_elements(array)
  array.group_by(&:itself).map do |k,v|
     k.merge({:count => v.length})
  end
end

def merge_data(keys, data)
    keys.each { |names|
        data.each { |info|
            names.merge!(info[names[:first_name]])
        }
    }
end

def find_cool(hashes)
    hashes.select { |x| x.has_value?("cool")}
end

def organize_schools(schools)
    new_schools = {}
    schools.each {|school, loc|
        loc.each {|info, location|
            if new_schools[location]
                new_schools[location] << school
            else
                new_schools[location] = []
                new_schools[location] << school
            end
        }
    }
    new_schools
end

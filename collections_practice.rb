require 'pry'

def begins_with_r(array)
  array.each { |current| 
  
  if current[0] != 'r'
    return false
  end
  }
  
  return true
end

def contain_a(array)
  finalArr = []
  
  array.each { |current|
    if current.include?('a') == true
      finalArr.push(current)
    end
  }
  
  return finalArr
end

def first_wa(array)
  array.find { |current|
    current.to_s.include?('wa')
  }
end

def remove_non_strings(array)
  newArr = []
  
  array.each_with_index { |current, i| 
    if current.is_a?(String) == true
      newArr.push(current)
    end
  }
  
  return newArr
end

def count_elements(array)
  finalArr = []
  finalObj = {}

  array.each {|namesHash|
    if finalObj[namesHash] == nil
      finalObj[namesHash] = 1
    elsif finalObj[namesHash] != nil
      finalObj[namesHash] += 1
    end
    }
    
  finalObj.each {|name, count|
    name[:count] = count
  }
  
  finalObj.each {|hash, countValue|
    finalArr.push(hash)
  }

  return finalArr
end

def merge_data(keys, data)
  keys.each {|key, datas|
    firstName = key[:first_name]
    
    data.each {|hash|
      hash.each {|name, dataHash|
        if name == firstName
        dataHash.each {|dataSym, dataVal|
          key[dataSym] = dataVal
        }
        end
      }
    }
  }
end

def find_cool(cool)
  finalArr = []
  cool.each {|hash|
    hash.each {|symbs, values|
      if values == 'cool'
        finalArr.push(hash)
      end
    }
  }
  
  return finalArr
end

def organize_schools(schools)
  finalObj = {}
  
  schools.each {|programs, locationHash|
    locationHash.each {|locSymb, location|
      if finalObj[location] == nil
        finalObj[location] = []
        finalObj[location].push(programs)
      else
        finalObj[location].push(programs)
      end
    }
  }
  
  return finalObj
end
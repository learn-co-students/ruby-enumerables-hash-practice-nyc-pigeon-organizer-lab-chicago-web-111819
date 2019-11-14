require "pry"


def nyc_pigeon_organizer(data)
  key_array = []
  value_array = []
  data.each {
    |key, value| key_array << key; 
    value_array << value;
  }
  
  new_data = Hash.new
  index = 0 
  
  while index < key_array.length do
    pigeon_category = key_array[index]
    temp_hash = Hash.new
    value_array[index].each {
      |key, value| index2 = 0 ;
      temp_array = []
      
      while index2 < value.length do 
        i = value[index2]
        if !temp_hash[i]
          temp_hash[i] = { pigeon_category=> [key.to_s] }
        else
          temp_hash[i][pigeon_category] << key.to_s
        end
        
        index2 += 1
      end ;
    }
    temp_hash.each { |key,value| 
    if new_data[key]
      new_data[key] = new_data[key].merge(temp_hash[key])
    else
      new_data[key] = temp_hash[key]
    end
    }
    index += 1 
  end
  new_data
end
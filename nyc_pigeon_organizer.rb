require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_hash = {}
  
  data.each do |attribute, values|
  
    values.each do |key, names|
    
      names.each do |string| 
        if !pigeon_hash[string] 
        pigeon_hash[string] = {}
        end
        if !pigeon_hash[string][attribute]
          pigeon_hash[string][attribute] = []
        end
        pigeon_hash[string][attribute] << key.to_s
      end
      
    end
  end
  # binding.pry
  pigeon_hash
end

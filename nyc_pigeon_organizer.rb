require 'pp'

def nyc_pigeon_organizer(data)
  #pp data
  pigeon_list = {}
  
    #unpack from top down - color, gender, lives --> purple, male, subway --> name
    #assign string value "Theo" ->name and attach specific individual attributes
    
  data.each do | cgl, attribute_hash | #using pigeon data - indiv cgl, cgl
    attribute_hash.each do | specs, names_array | #using attribute data - specific cgls, names
      names_array.each do | name | #pull out the individual names
        if pigeon_list[name] # if name exists
          if pigeon_list[name][cgl] # if name/cgl exists
            pigeon_list[name][cgl].push(specs.to_s) # push spec cgl to array 
          else
            pigeon_list[name][cgl] = [specs.to_s] #if name/cgl DNE, attach spec cgl
          end
        else
          pigeon_list[name] = {cgl =>[specs.to_s]} #if name DNE, create the key/value pair at name
        end
      end
    end
  end
  pigeon_list
end

def nyc_pigeon_organizer(data)
  new_data = {}
  
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        new_data[name] = {} if !new_data[name]
        new_data[name][key] = [] if !new_data[name][key]
        new_data[name][key].push(new_value.to_s)
        
      end
    end
  end
  
  new_data
end

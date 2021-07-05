#require 'pry'

def nyc_pigeon_organizer(data)
  good_data = {}
  
  data.each do |key, value|
    value.each do |key_2, names|
      names.each do |name| 
        good_data[name] = {:color => [], :gender => [], :lives => []}
      end 
    end   
  end 
  
  keys_good_data = good_data.keys
 
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      keys_good_data.each do |item|
        if bird_name === item
          good_data[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end  
  
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      keys_good_data.each do |value_in|
        if bird_name === value_in
          good_data[value_in][:gender] << gender.to_s
        end
      end 
    end 
  end 
  
  data[:lives].each do |home, name|
    name.each do |bird_name|
      keys_good_data.each do |value_in|
        if bird_name === value_in
          good_data[value_in][:lives] << home
        end
      end 
    end 
  end 
  
  
  return good_data
end














# i = 0 
#   while i < (data[:gender][:male].length + data[:gender][:female].length) do 
#     if data[:gender][:male][i]
#       hash[data[:gender][:male][i]] = {
#         :color => [],
#         :gender => [], 
#         :lives => []
#         }
#     end
    
#     if data[:gender][:female][i]  
#       hash[data[:gender][:female][i]] = {
#         :color => [],
#         :gender => [], 
#         :lives => []
#         }
#         k = 0 
#     end 
    
#     i += 1 
#   end
#   # at this point all the names and with empty arrays for the keys are in hash
  
#   i = 0 

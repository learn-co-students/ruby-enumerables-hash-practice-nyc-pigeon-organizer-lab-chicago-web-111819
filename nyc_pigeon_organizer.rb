#require 'pry'

def nyc_pigeon_organizer (data)
  final = {}

  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = final.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return final 
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

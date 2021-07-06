
def nyc_pigeon_organizer(data)

  names = []
  pigeon_hash = {}

  data.each do |attribute, items|
    items.each do |feature, arr|
      arr.each do |name|
        names << name if !names.include?(name)
      end
    end
  end
  
  names.each do |p_name|
    pigeon_hash[p_name] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_hash[p_name][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          pigeon_hash[name][attribute] << feature.to_s if name == p_name
        end
      end
    end
  end
  
  return pigeon_hash

end

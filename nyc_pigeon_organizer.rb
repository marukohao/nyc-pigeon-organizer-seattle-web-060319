def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  data.each do |feature, detail|
    detail.each do |item, names|
      names.each do |name|
        hash[name] = {}
        if !hash[name].key?(feature) 
          hash[name][feature] = [item]
        else 
          hash[name][feature] << item
        end
      end
    end
  end
  hash 
end

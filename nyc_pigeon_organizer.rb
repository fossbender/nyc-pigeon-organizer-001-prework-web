require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = []

  data.each do | key, value |
    pigeons << value.values
  end

 pigeon_hash = Hash[pigeons.flatten.collect { |name| [name, {}] } ]

    data.each do |key, value|
      value.each do | option, name_arr |
        pigeon_hash.each do |name, specs|
          if name_arr.include?(name)
            if pigeon_hash[name][key].nil?
              pigeon_hash[name][key] = [option.to_s]
            else
              pigeon_hash[name][key] << option.to_s
            end
        end
      end
      end
    end

  pigeon_hash

end

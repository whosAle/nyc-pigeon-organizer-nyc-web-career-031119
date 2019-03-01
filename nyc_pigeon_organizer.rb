def nyc_pigeon_organizer(data)
  result_hash = {}
  data.each { |atr, info| info.each { |type, names| names.each do |name|
    if !result_hash[name]
      result_hash[name]= {atr => [type.to_s]}
    else
      if !result_hash[name][atr]
        result_hash[name][atr] = [type.to_s]
      else
        result_hash[name][atr] << type.to_s
        # result_hash.merge!(name => {atr => [type.to_s]})
      end
    end
  end}}
  result_hash
end

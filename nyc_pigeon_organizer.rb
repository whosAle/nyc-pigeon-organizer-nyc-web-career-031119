def nyc_pigeon_organizer(data)
  result_hash = {}
  data.each { |atr, info| info.each do |type, name|
    if !result_hash[name]
      result_hash[name]= {atr => [type]}
    else
      result_hash[name][atr] << type
    end
  end}
  result_hash
end

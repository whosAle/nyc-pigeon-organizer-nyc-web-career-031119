def nyc_pigeon_organizer(data)
  result_hash = {}
  data.each { |atr, info| info.each do |type, name|
    if !result_hash[name]
      # puts name
      result_hash.merge!(name => {atr => [type.to_s]})
      puts result_hash
    else
      result_hash[name][atr] << type
    end
  end}
  # puts result_hash
  result_hash
end

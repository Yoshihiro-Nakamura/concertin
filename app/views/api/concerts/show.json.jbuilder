json.concert do
  json.orchestra @concert.orchestra.name
  json.title @concert.title
  json.start_month @concert.start_datetime.strftime("%1m")
  json.start_day @concert.start_datetime.strftime("%e")
  json.start_time @concert.start_datetime.strftime("%H:%M")
  json.hall @concert.hall.name
  json.contacts @concert.contacts
  json.songs @concert.songs do |song|
    json.composer song.composer.name
    json.title song.title
  end
  json.conductor @concert.conductor.name
  json.artists @concert.artists do |artist|
    json.name artist.name
    json.instrument artist.instrument[0].name
  end
  json.price @concert.price
end

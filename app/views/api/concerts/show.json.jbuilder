json.concert do
  json.orchestra @concert.orchestra.name
  json.title @concert.title
  json.start_month @concert.start_datetime.strftime("%1m")
  json.start_day @concert.start_datetime.strftime("%e")
  json.start_date @concert.start_datetime.strftime("#{%w(日 月 火 水 木 金 土)[@concert.start_datetime.wday]}")
  json.start_time @concert.start_datetime.strftime("%H:%M")
  json.hall @concert.hall.name
  json.contacts @concert.contacts
  json.songs @concert.songs do |song|
    json.composer song.composer.name
    json.title song.title
    json.id song.id
  end
  json.conductor @concert.conductor.name
  json.artists @concert.artists do |artist|
    json.name artist.name
    json.instrument artist.instrument[0].name
  end
  json.price @concert.price
end

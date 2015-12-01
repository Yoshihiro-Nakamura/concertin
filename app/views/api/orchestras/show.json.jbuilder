json.orchestra_name @orchestra_name
json.concerts @concerts do |concert|
  json.id concert.id
  json.title concert.title
  json.hall concert.hall.name
  json.month concert.start_datetime.strftime("%1m")
  json.day concert.start_datetime.strftime("%e")
  json.time concert.start_datetime.strftime("%H:%M")
  json.conductor concert.conductor
  json.artists concert.artists do |artist|
    json.name artist.name
    json.instrument artist.instrument[0].name
  end
  json.composers concert.composers.pluck(:name).uniq
end

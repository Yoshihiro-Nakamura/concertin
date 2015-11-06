json.concerts do
  json.array!(@concerts) do |concert|
    json.title(concert.title)
    json.month(concert.start_datetime.strftime("%1m"))
    json.day(concert.start_datetime.strftime("%e"))
    json.orchestra(concert.orchestra.name)
    json.conductor(concert.conductor.name)
  end
end

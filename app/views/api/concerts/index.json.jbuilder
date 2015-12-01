json.concerts do
  json.array!(@concerts) do |concert|
    json.id(concert.id)
    json.title(concert.title)
    json.month(concert.start_datetime.strftime("%1m"))
    json.day(concert.start_datetime.strftime("%e"))
    json.date(concert.start_datetime.strftime("%a"))
    json.orchestra(concert.orchestra.name)
    json.conductor(concert.conductor.name)
    json.img_url(concert.conductor.image_url)
  end
end

json.concert do
  json.title @concert.title
  json.start_month @concert.start_datetime.strftime("%1m")
  json.start_day @concert.start_datetime.strftime("%e")
  json.hall @concert.hall.name
  json.contact @concert.contacts
end

json.array!(@instruments) do |instrument|
  json.id(instrument.id)
  json.name(instrument.name)
end

json.array!(@events) do |event|
  json.extract! event, :name, :active, :starts_on, :ends_on
  json.url event_url(event, format: :json)
end
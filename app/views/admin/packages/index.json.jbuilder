json.array!(@packages) do |package|
  json.extract! package, :name
  json.url package_url(package, format: :json)
end
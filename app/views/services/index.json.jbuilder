json.array!(@services) do |service|
  json.extract! service, :id, :name, :price, :category_id, :gender_id, :level_id
  json.url service_url(service, format: :json)
end

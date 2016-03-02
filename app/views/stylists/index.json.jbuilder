json.array!(@stylists) do |stylist|
  json.extract! stylist, :id, :first_name, :last_name, :address, :city_id
  json.url stylist_url(stylist, format: :json)
end

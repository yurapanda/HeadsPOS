json.array!(@items) do |item|
  json.extract! item, :id, :sku, :name, :price, :cost_price, :level_id, :item_type_id, :category_id, :stock_amount, :amount_sold, :description
  json.url item_url(item, format: :json)
end

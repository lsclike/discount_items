json.extract! item, :id, :name, :price, :discount_rate, :category, :business, :location, :time, :created_at, :updated_at
json.url item_url(item, format: :json)

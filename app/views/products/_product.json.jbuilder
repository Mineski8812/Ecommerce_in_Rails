json.extract! product, :id, :Name, :EndingDate, :Description, :Stock_id, :created_at, :updated_at
json.url product_url(product, format: :json)

json.extract! customer, :id, :name, :name_kana, :sex, :zip_code, :tel, :marketing, :created_at, :updated_at
json.url customer_url(customer, format: :json)
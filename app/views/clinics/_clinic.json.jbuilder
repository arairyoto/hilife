json.extract! clinic, :id, :abb_name, :name, :hosho_name, :hd_name, :zip_code, :address, :tel, :fax, :email, :remarks, :licence, :created_at, :updated_at
json.url clinic_url(clinic, format: :json)
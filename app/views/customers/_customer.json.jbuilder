json.extract! customer, :id, :userid, :password_digest, :password, :password_confirm, :created_at, :updated_at
json.url customer_url(customer, format: :json)

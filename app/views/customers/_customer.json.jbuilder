json.extract! customer, :id, :firstName, :lastName, :address, :postalCode, :city, :province, :created_at, :updated_at
json.url customer_url(customer, format: :json)

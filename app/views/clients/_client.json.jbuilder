json.extract! client, :id, :first_name, :last_name, :type_id, :number_id, :birthdate, :gender, :created_at, :updated_at
json.url client_url(client, format: :json)

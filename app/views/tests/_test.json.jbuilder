json.extract! test, :id, :username, :password, :email, :age, :phone, :created_at, :updated_at
json.url test_url(test, format: :json)

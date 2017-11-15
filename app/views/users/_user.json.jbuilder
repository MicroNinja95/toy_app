json.extract! user, :id, :name, :user_email, :created_at, :updated_at
json.url user_url(user, format: :json)

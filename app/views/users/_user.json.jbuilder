json.extract! user, :id, :content, :user_id, :created_at, :updated_at
json.url user_url(user, format: :json)

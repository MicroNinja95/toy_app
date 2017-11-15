json.extract! updated_user, :id, :user_name, :user_email, :created_at, :updated_at
json.url updated_user_url(updated_user, format: :json)

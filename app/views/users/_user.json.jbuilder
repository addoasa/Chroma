json.extract! user, :id, :name, :email, :red, :blue, :green, :yellow, :created_at, :updated_at
json.url user_url(user, format: :json)

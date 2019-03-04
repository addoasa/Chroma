json.extract! user, :id, :firstname, :lastname, :email, favoritegenre, :created_at, :updated_at
json.url user_url(user, format: :json)

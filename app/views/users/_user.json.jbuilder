json.extract! user, :id, :name, :program, :graduation_year, :interest, :email,
              :password, :created_at, :updated_at
json.url user_url(user, format: :json)

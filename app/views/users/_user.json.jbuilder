json.extract! user, :id, :name, :program, :graduation_year, :interest,
              :created_at, :updated_at
json.url user_url(user, format: :json)

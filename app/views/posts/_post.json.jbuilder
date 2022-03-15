json.extract! post, :id, :professor, :rating, :description, :course_id, :poster_id, :created_at, :updated_at
json.url post_url(post, format: :json)

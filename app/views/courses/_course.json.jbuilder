json.extract! course, :id, :number, :name, :core_elective, :created_at,
              :updated_at
json.url course_url(course, format: :json)

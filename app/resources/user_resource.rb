class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :program, :string
  attribute :graduation_year, :string
  attribute :interest, :string
  attribute :email, :string
  attribute :password, :string

  # Direct associations

  has_many   :posts,
             foreign_key: :poster_id

  # Indirect associations

  many_to_many :courses
end

class PostResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :professor, :string
  attribute :rating, :string
  attribute :description, :string
  attribute :course_id, :integer
  attribute :poster_id, :integer

  # Direct associations

  # Indirect associations

end

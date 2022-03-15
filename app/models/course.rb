class Course < ApplicationRecord
  # Direct associations

  has_many   :posts,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    number
  end

end

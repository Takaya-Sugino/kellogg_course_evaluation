class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :professor
      t.string :rating
      t.string :description
      t.integer :course_id
      t.integer :poster_id

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :number
      t.string :name
      t.string :core_elective

      t.timestamps
    end
  end
end

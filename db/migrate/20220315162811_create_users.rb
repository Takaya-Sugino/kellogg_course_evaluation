class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :program
      t.string :graduation_year
      t.string :interest
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

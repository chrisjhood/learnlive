class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.text :objective
      t.text :prequisites
      t.integer :rating

      t.timestamps
    end
  end
end

class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end

class AddSessionIdToSection < ActiveRecord::Migration
  def change
    add_column :sections, :session_id, :string
  end
end

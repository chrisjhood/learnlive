class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string 
  	add_column :users, :last_name, :string 
  	add_column :users, :bio, :text 
  	add_column :users, :role, :string 
  	add_column :users, :fb_token, :string 
  end
end

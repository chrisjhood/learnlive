class AddTokenExpirationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :expires_at, :string
  end
end

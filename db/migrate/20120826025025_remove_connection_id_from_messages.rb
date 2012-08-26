class RemoveConnectionIdFromMessages < ActiveRecord::Migration
  def up
    remove_column :messages, :connection_id, :string
  end
end

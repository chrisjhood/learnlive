class AddSectionIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :section_id, :integer
  end
end

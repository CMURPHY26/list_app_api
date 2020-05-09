class AddForeignKeyToListItems < ActiveRecord::Migration[6.0]
  def change
    add_column :list_items, :list_id, :integer
  end
end

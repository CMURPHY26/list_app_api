class CreateListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_items do |t|
      t.string :name
      t.text :description
      t.boolean :is_completed
      t.integer :priority

      t.timestamps
    end
  end
end

class CreateResourceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_categories do |t|
      t.integer :category_id
      t.integer :resource_id
      t.timestamps
    end
  end
end

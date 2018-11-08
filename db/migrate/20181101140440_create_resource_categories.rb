class CreateResourceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_categories do |t|
      t.belongs_to :category
      t.belongs_to :resource
      t.timestamps
    end
  end
end

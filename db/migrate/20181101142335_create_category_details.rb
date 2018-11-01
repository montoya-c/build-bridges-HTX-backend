class CreateCategoryDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :category_details do |t|
      t.string :name
      t.belongs_to :language, foreign_key: true
      t.belongs_to :category, foreign_key: true
      t.timestamps
    end
  end
end

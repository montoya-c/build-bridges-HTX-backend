class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.float :longitude
      t.float :latitude
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end

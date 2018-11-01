class CreateResourceDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_details do |t|
      t.string :program_name
      t.text :description
      t.text :services
      t.string :address
      t.string :telephone
      t.string :website
      t.string :hours
      t.text :eligibility
      t.string :language_spoken
      t.belongs_to :resource, foreign_key: true
      t.belongs_to :language, foreign_key: true

      t.timestamps
    end
  end
end

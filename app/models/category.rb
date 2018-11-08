class Category < ApplicationRecord
  has_many :category_details
  has_many :resource_categories
  has_many :resources, through: :resource_categories


  def details
    self.category_details.find_by(language: @@selected_language)
  end
end

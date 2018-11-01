class Category < ApplicationRecord
  has_many :category_details
  has_many :resource_categories
  has_many :resources, through: :resource_categories
end

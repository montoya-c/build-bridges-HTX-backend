class Resource < ApplicationRecord
  belongs_to :username
  has_many :resource_details
  has_many :resource_categories
  has_many :categories, through: :resource_categories
end

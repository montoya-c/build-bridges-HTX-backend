class Resource < ApplicationRecord
  belongs_to :user
  has_many :resource_details, dependent: :destroy
  has_many :resource_categories
  has_many :categories, through: :resource_categories

  accepts_nested_attributes_for :resource_details

  def details
    self.resource_details.find_by(language: @@selected_language)
  end
end

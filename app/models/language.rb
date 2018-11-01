class Language < ApplicationRecord
  has_many :category_details
  has_many :resource_details
end

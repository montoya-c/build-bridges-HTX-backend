class CategoryDetail < ApplicationRecord
  belongs_to :category
  belongs_to :language
end

class ResourceDetail < ApplicationRecord
  belongs_to :resource
  belongs_to :language
end

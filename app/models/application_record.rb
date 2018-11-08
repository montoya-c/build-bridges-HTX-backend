class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true


  def self.selected_language=(value)
    @@selected_language = value
  end

  def selected_language
    @@selected_language
  end

end

module Shipworks
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true

    def self.table_name
      self.name.split('::').last
    end
  end
end

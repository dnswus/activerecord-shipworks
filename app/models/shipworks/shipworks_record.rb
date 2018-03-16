module Shipworks
  class ShipworksRecord < ActiveRecord::Base
    self.abstract_class = true
    establish_connection SHIPWORKS_DB if defined? SHIPWORKS_DB

    def self.table_name
      self.name.split('::').last
    end
  end
end

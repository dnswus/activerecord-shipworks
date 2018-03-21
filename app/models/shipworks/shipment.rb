module Shipworks
  class Shipment < ShipworksRecord
    belongs_to :order, foreign_key: 'OrderID'
    has_many :ups_packages, foreign_key: 'ShipmentID'
  end
end

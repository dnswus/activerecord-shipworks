module Shipworks
  class Shipment < ShipworksRecord
    belongs_to :order, foreign_key: 'OrderID'
  end
end

module Shipworks
  class OrderCharge < ShipworksRecord
    belongs_to :order, foreign_key: 'OrderID'
  end
end

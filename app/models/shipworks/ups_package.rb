module Shipworks
  class UpsPackage < ShipworksRecord
    belongs_to :shipment, foreign_key: 'ShipmentID'
  end
end

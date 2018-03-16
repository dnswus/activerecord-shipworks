module Shipworks
  class Store < ShipworksRecord
    has_many :orders, foreign_key: 'StoreID'
  end
end

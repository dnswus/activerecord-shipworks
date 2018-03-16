module Shipworks
  class Order < ShipworksRecord
    belongs_to :store, foreign_key: 'StoreID'
    has_many :notes, foreign_key: 'ObjectID'
    has_many :shipments, foreign_key: 'OrderID'
    has_many :order_items, foreign_key: 'OrderID'
    has_many :order_charges, foreign_key: 'OrderID'
  end
end

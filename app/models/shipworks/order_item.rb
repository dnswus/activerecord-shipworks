module Shipworks
  class OrderItem < ShipworksRecord
    belongs_to :order, foreign_key: 'OrderID'
    has_many :order_item_attributes, foreign_key: 'OrderItemID'
    has_one :amazon_order_item, foreign_key: 'OrderItemID'
  end
end

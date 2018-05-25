module Shipworks
  class AmazonOrderItem < ShipworksRecord
    belongs_to :order_item, foreign_key: 'OrderItemID'
  end
end

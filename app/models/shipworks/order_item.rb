module Shipworks
  class OrderItem < ApplicationRecord
    belongs_to :order, foreign_key: 'OrderID'
    has_many :order_item_attributes, foreign_key: 'OrderItemID'
  end
end

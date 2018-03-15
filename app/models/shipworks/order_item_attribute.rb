module Shipworks
  class OrderItemAttribute < ApplicationRecord
    belongs_to :order_item, foreign_key: 'OrderItemID'
  end
end

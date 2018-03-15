module Shipworks
  class OrderCharge < ApplicationRecord
    belongs_to :order, foreign_key: 'OrderID'
  end
end

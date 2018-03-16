module Shipworks
  class OrderCharge < Shipworks::ApplicationRecord
    belongs_to :order, foreign_key: 'OrderID'
  end
end

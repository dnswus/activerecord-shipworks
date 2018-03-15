module Shipworks
  class Shipment < ApplicationRecord
    belongs_to :order, foreign_key: 'OrderID'
  end
end

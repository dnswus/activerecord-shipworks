module Shipworks
  class Store < ApplicationRecord
    has_many :orders, foreign_key: 'StoreID'
  end
end

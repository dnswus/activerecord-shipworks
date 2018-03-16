module Shipworks
  class Note < ShipworksRecord
    belongs_to :user, foreign_key: 'UserID'
    belongs_to :order, foreign_key: 'ObjectID'
  end
end

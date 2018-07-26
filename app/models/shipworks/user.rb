module Shipworks
  class User < ShipworksRecord
    has_many :notes, foreign_key: 'UserID'
    has_many :audits, foreign_key: 'UserID'
  end
end

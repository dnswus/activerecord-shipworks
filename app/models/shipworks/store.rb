module Shipworks
  class Store < ShipworksRecord
    has_many :orders, foreign_key: 'StoreID'

    STORE_TYPE_MAPPING = {
      1 => 'eBay',
      10 => 'Amazon',
      13 => 'Zen Cart',
      31 => 'Generic - File',
      34 => 'Newegg',
      35 => 'Buy.com',
      36 => 'Sears',
      61 => 'Choxi',
      75 => 'Walmart',
      78 => 'GeekSeller'
    }

    def TypeName
      STORE_TYPE_MAPPING[self.TypeCode] || self.TypeCode
    end
  end
end

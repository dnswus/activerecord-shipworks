module Shipworks
  class AmazonOrder < ShipworksRecord
    belongs_to :order, foreign_key: 'OrderID'

    FULFILLMENT_CHANNEL_MAPPING = {
      0 => 'Unavailable',
      1 => 'Amazon',
      2 => 'Merchant'
    }

    def FulfillmentChannelName
      FULFILLMENT_CHANNEL_MAPPING[self.FulfillmentChannel] || FulfillmentChannel
    end
  end
end

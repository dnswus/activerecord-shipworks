module Shipworks
  class Audit < ShipworksRecord
    belongs_to :user, foreign_key: 'UserID'

    ACTION_MAPPING = {
      1 => 'Log On',
      2 => 'Log Off',
      3 => 'Upgrade Database',
      4 => 'Backup Database',
      5 => 'Add',
      6 => 'Edit',
      7 => 'Delete',
      8 => 'Reset ShipSense',
      9 => 'Reload ShipSense started',
      10 => 'Combine Order',
      11 => 'Split Order',
    }

    ACTION_MAPPING.each do |k, v|
      scope "action_#{v}".parameterize.underscore.to_sym, -> { where(Action: k) }
    end

    def ActionName
      ACTION_MAPPING[self.Action] || self.Action
    end
  end
end

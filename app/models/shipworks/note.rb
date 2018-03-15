module Shipworks
  class Note < ApplicationRecord
    belongs_to :user, foreign_key: 'UserID'
    belongs_to :order, foreign_key: 'ObjectID'
  end
end

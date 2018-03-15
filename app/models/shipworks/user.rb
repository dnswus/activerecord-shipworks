module Shipworks
  class User < ApplicationRecord
    has_many :notes, foreign_key: 'UserID'
  end
end

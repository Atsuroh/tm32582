class Order < ApplicationRecord
  belongs_to :user
  belongs_to :tmart
  has_one :acceptance
end
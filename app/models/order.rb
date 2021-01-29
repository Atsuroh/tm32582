class Order < ApplicationRecord
  include ActiveModel::Model
  attr_accessor :token, :user_id, :tmart_id

  belongs_to :user
  belongs_to :tmart

  with_options presence: true do
    validates :token
    validates :user_id
    validates :tmart_id
  end
end
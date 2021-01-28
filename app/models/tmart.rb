class Tmart < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :disposal
  belongs_to_active_hash :store
  belongs_to_active_hash :hour
  belongs_to_active_hash :minute
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :product_name
    validates :count
    validates :before_price
    validates :after_price
    validates :deadline
  end

  validates :before_price, :after_price, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 9_999_999
  }  
  validates :before_price, :after_price, numericality: {
    with: /\A[0-9]+\z/, message: "Half-width number"
  }

  validates :category_id, :disposal_id, :store_id, :hour_id, :minute_id, numericality: { other_than: 1 }
end
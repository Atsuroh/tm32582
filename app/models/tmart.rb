class Tmart < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :disposal
  belongs_to_active_hash :store
  belongs_to_active_hash :hour
  belongs_to_active_hash :minute
  belongs_to :user
  has_one_attached :image

  validates :product_name, :hour_id, :minute_id, :count, :category_id, :disposal_id, :store_id, :deadline, :before_price, :after_price, presence: true
  validates :category_id, :disposal_id, :store_id, :hour_id, :minute_id, numericality: { other_than: 1 }
end
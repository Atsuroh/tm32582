class Tmart < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :disposal
  belongs_to_active_hash :store
  belongs_to :user
  has_one_attached :image

  validates :product_name, :count, :category_id, :disposal_id, :store_id, :deadline, :before_price, :after_price, presence: true
  validates :category_id, :disposal_id, :store_id, numericality: { other_than: 1 }
end
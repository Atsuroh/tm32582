class Tmart < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :store
  belongs_to :user
  has_one_attached :image

  validates :product_name, :text, :category_id, :status_id, :store_id, :before, :after, presence: true
  validates :category_id, :status_id, :store_id, numericality: { other_than: 1 }
end
class Tmart < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :product_name, :text, :category_id, :status_id, :store_id, :before, :after, presence: true
end
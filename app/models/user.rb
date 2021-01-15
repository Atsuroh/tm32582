class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  validates :prefecture_id, numericality: { other_than: 1 }
  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: {case_sensitive: false}
    validates :password,  format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/, message: "Include both letters and numbers" }
    validates :post_code, format: { with: /\A\d{3}[-]\d{4}\z/, message: 'Please input correctly' }
    validates :prefecture_id, numericality: {other_than: 1}
    validates :city
    validates :address
    validates :phone_number, numericality: {only_integer: true}, length: {maximum: 11}
    validates :birthday
  end
  with_options format: {with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/} do
    validates :first_name
    validates :last_name
  end
  with_options format: {with: /\A[ァ-ヶー－]+\z/} do
    validates :first_name_kana
    validates :last_name_kana
  end
end
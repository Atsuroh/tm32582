class Disposal < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '消費期限間近' },
    { id: 3, name: '鮮度落ち' },
    { id: 4, name: '死筋商品' },
    { id: 5, name: '傷物' },
    { id: 6, name: 'その他(備考欄参照)' },
  ]
  include ActiveHash::Associations
  has_many :tmarts
end
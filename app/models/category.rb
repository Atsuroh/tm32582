class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '米飯' },
    { id: 3, name: '調理パン' },
    { id: 4, name: '麺類' },
    { id: 5, name: 'デリカテッセン' },
    { id: 6, name: '野菜・果物' },
    { id: 7, name: '鮮魚' },
    { id: 8, name: 'パン・ペストリー' },
    { id: 9, name: '乳飲料' },
    { id: 10, name: 'ソフトドリンク' },
    { id: 11, name: '酒' },
    { id: 12, name: '加工食品' },
    { id: 13, name: '菓子' },
    { id: 14, name: '冷凍食品' },
    { id: 15, name: '雑貨' },
    { id: 16, name: 'その他' },
  ]
  include ActiveHash::Associations
  has_many :tmarts
end
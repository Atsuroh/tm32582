class Store < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '上新庄2丁目店' },
    { id: 3, name: '阪急淡路駅前店' },
    { id: 4, name: 'JR吹田駅前店' },
    { id: 5, name: 'だいどう豊里店' },
  ]
  include ActiveHash::Associations
  has_many :tmarts
end
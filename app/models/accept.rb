class Accept < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '店受け取り' },
    { id: 3, name: '宅配' },
]
  include ActiveHash::Associations
  has_many :acceptance
end
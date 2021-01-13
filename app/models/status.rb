class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '2時間前' },
    { id: 3, name: '3時間以内' },
    { id: 4, name: '4時間以内' },
    { id: 5, name: '5時間以内' },
    { id: 6, name: '6時間以内' },
    { id: 7, name: '1日以内' },
    { id: 8, name: '2日以内' },
    { id: 9, name: '3日以内' },
    { id: 10, name: '3日以上' },
  ]
  include ActiveHash::Associations
  has_many :tmarts
end
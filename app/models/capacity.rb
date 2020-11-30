class Capacity < ActiveHash::Base
self.data = [
  { id: 1, name: '--' },
  { id: 2, name: '8' },
  { id: 3, name: '10' },
  { id: 4, name: '12' },
  { id: 5, name: '14' },
]

include ActiveHash::Associations
  has_many :equipments
end

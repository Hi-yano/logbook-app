class Type < ActiveHash::Base
self.data = [
  { id: 1, name: '--' },
  { id: 2, name: 'アルミ' },
  { id: 3, name: 'スチール' },
]

include ActiveHash::Associations
  has_many :equipments
end

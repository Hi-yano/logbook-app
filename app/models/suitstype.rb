class Suitstype < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ウェットスーツ' },
    { id: 3, name: 'ドライスーツ' }
  ]

  include ActiveHash::Associations
  has_many :items
end

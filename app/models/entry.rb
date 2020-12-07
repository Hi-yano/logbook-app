class Entry < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ボートダイブ' },
    { id: 3, name: 'ビーチダイブ' },
    { id: 4, name: 'ドリフトダイブ' },
    { id: 5, name: 'ナイトダイブ' }
  ]

  include ActiveHash::Associations
  has_many :areas
end

class Tide < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: 'とても弱い' },
    { id: 4, name: '弱い' },
    { id: 5, name: '強い' },
    { id: 6, name: 'とても強い' },
  ]

  include ActiveHash::Associations
  has_many :conditions
end

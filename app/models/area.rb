class Area < ApplicationRecord
  belongs_to :user
  has_one    :condition
  has_one    :equipment
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :entry

  with_options presence: true do
    validates :dive_day
    validates :region
  end
  with_options numericality: { other_than: 1 } do
    validates :entry_id
  end

  def self.search(search, num)
    if search != ""
      if num == 1
      Area.where('dive_day LIKE(?)', "#{search}-__")
      elsif num == 2
        Area.where('dive_day LIKE(?)', "20__-#{search}-__")
      elsif num == 3
        Area.where('dive_day LIKE(?)', "#{search}%")  
      end
    else
      Area.all
    end
  end
end
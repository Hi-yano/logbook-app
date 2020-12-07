class Area < ApplicationRecord
  belongs_to :user
  has_one    :condition, dependent: :destroy
  has_one    :item, dependent: :destroy
  has_one    :logbook, dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :entry

  with_options presence: true do
    validates :dive_day, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }
    validates :region
  end
  with_options numericality: { other_than: 1 } do
    validates :entry_id
  end

  def self.search(search, num)
    if search != ''
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

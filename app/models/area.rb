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

  def self.search(search)
    if search != ""
      Area.where('dive_day LIKE(?)', "%#{search}%")
    else
      Area.all
    end
  end
end

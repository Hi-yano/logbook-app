class Area < ApplicationRecord
  belongs_to :user
  has_one    :condition
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :entry

  with_options presence: true do
    validates :dive_day
    validates :region
  end
  with_options numericality: { other_than: 1 } do
    validates :entry_id
  end
end

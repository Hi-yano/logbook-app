class Item < ApplicationRecord
  belongs_to :area
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :capacity
  belongs_to :type
  belongs_to :suitstype


  with_options presence: true do
    validates :thickness
    validates :weight
  end
  with_options numericality: { other_than: 1 } do
    validates :suitstype_id
    validates :capacity_id
    validates :type_id
  end
end
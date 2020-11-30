class Item < ApplicationRecord

  belongs_to :area

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :capacity
  belongs_to :type
  belongs_to :suitstype

end

class Area < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :entry
  belongs_to :user
  belongs_to :condition
end

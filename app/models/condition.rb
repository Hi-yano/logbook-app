class Condition < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :tide
  belongs_to :user
  belongs_to :area
end
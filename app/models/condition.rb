class Condition < ApplicationRecord
  belongs_to :area
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :tide
end
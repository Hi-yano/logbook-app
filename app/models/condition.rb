class Condition < ApplicationRecord
  belongs_to :area
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :tide

  with_options presence: true do
    validates :weather
    validates :wind
    validates :wave
    validates :temperature
    validates :water_temperature
  end
  with_options numericality: { other_than: 1 } do
    validates :tide_id
  end
end
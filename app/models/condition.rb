class Condition < ApplicationRecord
  belongs_to :area
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :tide

  with_options presence: true do
    validates :weather
    validates :wave, format: { with: /\A-?[0-9]+(\.[0-9]+)?\z/ }
  end

  with_options presence: true, format: { with: /\A[0-9]+\z/ } do
    validates :wind
    validates :temperature
    validates :water_temperature
  end
  with_options numericality: { other_than: 1 } do
    validates :tide_id
  end
end

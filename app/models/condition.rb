class Condition < ApplicationRecord
  belongs_to :area
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :tide

  validates :weather, presence: true
  validates :wave, presence: true, numericality: true, format: { with: /\A-?[0-9]+(\.[0-9]+)?\z/ }

  with_options presence: true, numericality: true, format: { with: /\A[0-9]+\z/ } do
    validates :wind
    validates :temperature
    validates :water_temperature
  end
  with_options numericality: { other_than: 1 } do
    validates :tide_id
  end
end

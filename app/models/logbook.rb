class Logbook < ApplicationRecord
  belongs_to :area, dependent: :destroy
  has_one_attached :image

  with_options presence: true do
    validates :entry_time
    validates :exit_time
  end
  with_options presence: true do
    validates :text
    validates :point
  end

  with_options presence: true, numericality: true, format: { with: /\A[0-9]+\z/ } do
    validates :start_air
    validates :finish_air
    validates :max_depth
    validates :ave_depth
    validates :count
  end

  validates :text, presence: true, unless: :was_attached?

  def was_attached?
    image.attached?
  end
end

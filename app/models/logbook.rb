class Logbook < ApplicationRecord
  belongs_to :area
  has_one_attached :image

  with_options presence: true do
    validates :start_air
    validates :finish_air
    validates :max_depth
    validates :ave_depth
    validates :entry_time
    validates :exit_time
    validates :count
    validates :text
    validates :point
  end

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end

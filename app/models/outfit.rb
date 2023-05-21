class Outfit < ApplicationRecord
  CATEGORIES = %w[WEDDING FORMAL-OUTFIT PARTY-COSTUME].freeze
  belongs_to :user
  has_one_attached :photo
  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :price_per_day, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end

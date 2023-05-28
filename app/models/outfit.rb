class Outfit < ApplicationRecord
  CATEGORIES = %w[WEDDING FORMAL-OUTFIT PARTY-COSTUME].freeze
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :price_per_day, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  include PgSearch::Model

  pg_search_scope :search_by_title_description_category,
    against: %i[ title description category ],
    using: {
      tsearch: { prefix: true }
    }
end

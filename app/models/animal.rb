class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_one_attached :photo

  validates :description, presence: true, length: { in: 34..63 }
  validates :price, presence: true
  validates :species, presence: true
  validates :category, presence: true
  validates :name, presence: true
  validates :requirement, presence: true
  validates :age_ago, presence: true
  validates :location, presence: true
  validates :photo, presence: true
end

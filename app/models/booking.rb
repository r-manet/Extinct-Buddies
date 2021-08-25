class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  validates :start_date, presence: true
  validates :end_time, presence: true
  validate :time_logic

  def time_logic
    unless end_time > start_date
      errors.add(:end_time, 'must be after the start time')
    end
  end
end

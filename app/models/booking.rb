class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :time_logic

  def time_logic
    unless end_time > start_time
      errors.add(:end_time, 'must be after the start time')
    end
  end
end

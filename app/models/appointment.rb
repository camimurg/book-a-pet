class Appointment < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  # belongs_to :owner, through: :pet, foreign_key: :user_id

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :message, presence: true
end

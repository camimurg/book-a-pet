class Appointment < ApplicationRecord
  belongs_to :pet
  belongs_to :user

  validates :date, presence: true
  validates :time, presence: true
  validates :message, presence: true, length: { minimum: 140 }
end

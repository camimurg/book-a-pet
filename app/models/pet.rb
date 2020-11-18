class Pet < ApplicationRecord
  has_many :appointments, dependent: :destroy
  belongs_to :user
  SPECIES = ["Dog", "Cat", "Fish", "Hamster", "Bird", "Snake", "Frog"]
  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES }
  validates :address, presence: true
  validates :city, presence: true
  validates :description, presence: true
end

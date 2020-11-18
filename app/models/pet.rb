class Pet < ApplicationRecord
  has_many :appointments, dependent: :destroy
  belongs_to :user
  has_one_attached :picture
  SPECIES = ["dog", "cat", "fish", "hamster", "bird"]
  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES }
  validates :address, presence: true
  validates :city, presence: true
  validates :description, presence: true
  validates :picture, presence: true
end

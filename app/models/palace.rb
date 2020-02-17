class Palace < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :price,  numericality: { only_integer: true }
  validates :location, uniqueness: true, presence: true
end

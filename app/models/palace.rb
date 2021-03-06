class Palace < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :price,  numericality: { only_integer: true }
  validates :location, uniqueness: true, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end

class Booking < ApplicationRecord
  belongs_to :palace
  belongs_to :user
end

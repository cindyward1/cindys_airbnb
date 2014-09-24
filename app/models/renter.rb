class Renter < User
  has_many :reservations
  has_many :landlords, through: :reservations
end

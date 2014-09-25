class Renter < User
  has_many :reservations, foreign_key: :user_id
  has_many :rentals, through: :reservations
end

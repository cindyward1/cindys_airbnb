class Landlord < User
  has_many :rentals, foreign_key: :user_id
  has_many :renters, through: :reservations
end

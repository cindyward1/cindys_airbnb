class Landlord < User
  has_many :rentals, foreign_key: :user_id
  has_many :reservations, through: :rentals
end

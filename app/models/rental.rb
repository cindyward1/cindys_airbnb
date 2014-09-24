class Rental < ActiveRecord::Base
  belongs_to :landlord
  has_many :reservations
  has_many :renters, through: :reservations
  has_many :comments, :as => :opinions_about
end

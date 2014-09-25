class Reservation < ActiveRecord::Base
  belongs_to :renter, foreign_key: :user_id
  belongs_to :rental
  validates :start_date, presence: true
  validates :end_date, presence: true
end

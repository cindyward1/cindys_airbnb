class Reservation < ActiveRecord::Base
  belongs_to :renter
  belongs_to :rental
  validates :start_date, :presence => true
  validates :end_date, :presence => true
end

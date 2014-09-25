class Rental < ActiveRecord::Base
  belongs_to :landlord, foreign_key: :user_id
  has_many :reservations
  has_many :renters, through: :reservations
  has_many :comments, as: :opinions_about
  validates :city, presence: true
  validates :state, presence: true
  validates :base_rate, presence: true, numericality: true
  has_attached_file :the_photo, :styles => { :small => "100x100>", :original => "400x400>>" }
end

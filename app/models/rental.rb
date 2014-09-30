class Rental < ActiveRecord::Base
  belongs_to :landlord, foreign_key: :user_id
  has_many :reservations
  has_many :renters, through: :reservations
  has_many :comments, as: :opinions_about
  validates :city, presence: true
  validates :state, presence: true
  validates :base_rate, presence: true
  has_attached_file :the_photo, :styles => { :small => "100x100>", :original => "400x400>>" }
  validates_attachment :the_photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  def set_default_fields(rental_hash)
    if rental_hash[:rental_type].nil?
      self.rental_type = "shared"
    else
      self.rental_type = rental_hash[:rental_type]
    end

    if rental_hash[:number_bedrooms].nil?
      self.number_bedrooms = 1
    else
      self.number_bedrooms = rental_hash[:number_bedrooms]
    end

    if rental_hash[:number_beds].nil?
      self.number_beds = 1
    else
      self.number_beds = rental_hash[:number_beds]
    end

    if rental_hash[:number_bathrooms].nil?
      self.number_bathrooms = 0
    else
      self.number_bathrooms = rental_hash[:number_bathrooms]
    end

    if rental_hash[:max_number_guests].nil?
      self.max_number_guests = 1
    else
      self.max_number_guests = rental_hash[:max_number_guests]
    end

    if rental_hash[:extra_guest_rate].nil?
      self.extra_guest_rate = 0
    else
      self.extra_guest_rate = rental_hash[:extra_guest_rate]
    end

    if rental_hash[:minimum_days_stay].nil?
      self.minimum_days_stay = 1
    else
      self.minimum_days_stay = rental_hash[:minimum_days_stay]
    end

    if rental_hash[:description].nil?
      self.description = ""
    else
      self.description = rental_hash[:description]
    end
    self
  end

private
  def rental_params
    params.require(:rental).permit(:rental_type, :city, :state, :number_bedrooms, :number_beds,
                                   :number_bathrooms, :max_number_guests, :base_rate,
                                   :extra_guest_rate, :minimum_days_stay, :description,
                                   :has_photo, :the_photo)
  end
end

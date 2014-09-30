class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments, as: :opinions_about
  validates :username, presence: true, uniqueness: true, case_sensitive: false,
            length: { minimum: 8, maximum: 32 }
  validates :email, presence: true, length: { minimum: 5, maximum: 50 }
  validates_format_of :email, with: /^.+@.+\..+$/, on: :create, :multiline => true
  validates :date_joined, presence: true

  scope :landlords, -> { where(type: 'Landlord') }
  scope :renters, -> { where(type: 'Renter') }

  def landlord?
    self.type == "Landlord"
  end

  def renter?
    self.type == "Renter"
  end
end

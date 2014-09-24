class User < ActiveRecord::Base
  has_secure_password
  has_many :comments, :as => :opinions_about
  validates :username, :presence => true, length: { maximum: 16 }
  validates :email, :presence => true, length: { maximum: 50 }
  validates_format_of :email, with: /^.+@.+\..+$/, on: :create, :multiline => true
  validates :date_joined, :presence => true

  scope :landlords, -> { where(type: 'Landlord') }
  scope :renters, -> { where(type: 'Renter') }

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

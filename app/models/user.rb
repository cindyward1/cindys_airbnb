class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments, :as => :opinions_about
  validates :username, presence: true, uniqueness: true, length: { minimum: 8, maximum: 16 }
  validates :email, presence: true, length: { minimum: 5, maximum: 50 }
  validates_format_of :email, with: /^.+@.+\..+$/, on: :create, :multiline => true
  validates :date_joined, presence: true

  scope :landlords, -> { where(type: 'Landlord') }
  scope :renters, -> { where(type: 'Renter') }

private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :remember_me,
                                 :date_joined)
  end
end

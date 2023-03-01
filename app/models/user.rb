class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :listings, through: :bookings
  has_many :listings
  has_one_attached :photo

  validates :first_name, presence: { message: "First Name cannot be blank" }
  validates :last_name, presence: { message: "Last Name cannot be blank" }
  # has_secure_password
  # PASSWORD_FORMAT = /\A
  # (?=.*\d)           # at least one digit
  # \z/x
  # validates :password, presence: true, format: { with: PASSWORD_FORMAT }
  validates :email, presence: true, uniqueness: true
end

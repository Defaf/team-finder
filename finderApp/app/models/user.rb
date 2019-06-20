class User < ApplicationRecord
  has_many :events, dependent: :destroy 
  has_many :teams
  has_many :members
  has_many :teams, through: :members
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class User < ApplicationRecord

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]*\z/ }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]*\z/ }
  validates :phone_number, presence: true, format: { with: /\A[0-9+]*\z/ }, length: { minimum: 8, maximum: 13 }
  # Include default devise modules. Others available are:
  # :trackable, :confirmable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end

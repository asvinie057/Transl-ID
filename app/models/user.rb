class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :documents, class_name: "document", foreign_key: "reference_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

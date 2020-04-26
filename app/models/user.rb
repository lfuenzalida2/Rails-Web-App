class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :name, presence: true
  # validates :gender, presence: true
  # validates :region, presence: true
  # validates :birthday, presence: true
  # validates :number, presence: true
  # validates :description, presence: true
  # validates :sexual_orientation, presence: true
  # validates :interests, presence: true
  # validates :photos, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

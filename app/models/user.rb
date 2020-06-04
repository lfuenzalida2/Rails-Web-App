# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :run, rut: true
  # validates :name, presence: true
  # validates :birthday, presence: true
  # validates :number, presence: true
  # validates :description, presence: true
  # validates :photos, presence: true

  enum gender: [:male, :female, :all], _prefix: 'gender'
  enum interests: [:deporte, :musica, :arte, :ciencias, :comer, :literatura, :teatro], _prefix: 'interests'
  enum sexual_orientation: [:male, :female, :all], _prefix: 'sexual_orientation'
  enum region: [:I, :II, :III, :IV, :V, :VI, :VII, :VIII, :IX, :X, :XI, :XII, :Metropolitana, :XIV, :XV, :XVI], _prefix: 'region'
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

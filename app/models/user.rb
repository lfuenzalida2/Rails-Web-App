# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :locals
  has_one :review
  has_one_attached :avatar
  validates :rut, :rut => true
  validates :name, :presence => true, :format => { :with => /\A[a-z A-Z]+\z/,
                                                :message => "Only letters allowed"},
                                    :length => { :in => 4..20 }
  validates :birthday, :presence => true
  validates :number, :presence => true, length: {is: 8}
  validates :description, :presence => true
  validate :avatar_missing


  enum gender: [:male, :female, :all], _prefix: 'gender'
  enum interests: [:deporte, :musica, :arte, :ciencias, :comer, :literatura, :teatro], _prefix: 'interests'
  enum sexual_orientation: [:male, :female, :all], _prefix: 'sexual_orientation'
  enum region: [:I, :II, :III, :IV, :V, :VI, :VII, :VIII, :IX, :X, :XI, :XII, :Metropolitana, :XIV, :XV, :XVI], _prefix: 'region'
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def thumbnail 
    return self.avatar.variant(resize: '200x250!').processed
  end

  private
  def avatar_missing
    if avatar.attached? == false
      errors.add(:avatar, 'are missing!')
    end
  end
end

# frozen_string_literal: true

class DuenoUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :locals
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

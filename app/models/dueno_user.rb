# frozen_string_literal: true

class DuenoUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :locals, dependent: :destroy

  validates :rut, :rut => true
  validates :name, :presence => true, :format => { :with => /\A[a-z A-Z]+\z/,
                                                :message => "Only letters allowed"},
                                    :length => { :in => 4..20 }


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

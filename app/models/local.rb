# frozen_string_literal: true

class Local < ApplicationRecord
    belongs_to :dueno_user
    has_many :reviews, dependent: :destroy
    has_many :users
    has_one_attached :avatar
    
    enum tipo: [:restaurante, :cine, :bar, :motel], _prefix: 'tipo'
    validates :nombre, :presence => true, :format => { :with => /\A[a-zA-Z]+\z/,
                                                :message => "Only letters allowed"},
                                    :length => { :in => 4..30 }
    validates :direccion, :presence => true
    validate :avatar_missing
    private
    def avatar_missing
        if avatar.attached? == false
            errors.add(:avatar, 'or Image are missing!')
        end
    end
end

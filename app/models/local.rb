# frozen_string_literal: true

class Local < ApplicationRecord
    enum tipo: [:restaurante, :cine, :bar, :motel], _prefix: 'tipo'
    validates :nombre, :presence => true, :format => { :with => /\A[a-zA-Z]+\z/,
                                                :message => "Only letters allowed"},
                                    :length => { :in => 4..30 }
    validates :direccion, :presence => true
end

# frozen_string_literal: true

class Review < ApplicationRecord
    validate :rating, numericality: { only_integer: true }
    validate :text, presence => true, :length => { :in => 4..100 }
end

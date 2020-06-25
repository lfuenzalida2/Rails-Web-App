# frozen_string_literal: true

class Review < ApplicationRecord
  validates :review, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_tan_or_equal_to: 5 }
  
  belongs_to :cita
  belongs_to :user
  belongs_to :local
end

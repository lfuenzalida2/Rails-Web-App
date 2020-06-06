# frozen_string_literal: true

class Review < ApplicationRecord
    belongs_to :user
    belongs_to :local
    has_one :user, :through => :local
end

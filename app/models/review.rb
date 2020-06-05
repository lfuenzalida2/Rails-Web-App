# frozen_string_literal: true

class Review < ApplicationRecord
    has_one :user, through :local
end

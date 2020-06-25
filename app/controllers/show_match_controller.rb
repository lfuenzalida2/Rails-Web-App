# frozen_string_literal: true

class ShowMatchController < ApplicationController
  def My_match
    @likes = Like.all
    @users = User.all
    @citas = Cita.all
  end
end

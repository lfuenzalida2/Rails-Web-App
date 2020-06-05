class ShowMatchController < ApplicationController
  def My_match
    @likes = Like.all
    @users = User.all
  end
end

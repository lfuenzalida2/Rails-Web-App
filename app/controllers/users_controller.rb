# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def post_params
    p 'aaasdfasdfasaaasdfasdfasdaaasdfasdfasdaaasdfasdfasdaaasdfasdfasdaaasdfasdfasdd'
    params.require(:post).permit(:avatar)
  end

end

class DuenoUsersController < ApplicationController
  def index
    @dueno_users = DuenoUser.all
  end

  def show
    @dueno_user = DuenoUser.find(params[:id])
  end

end

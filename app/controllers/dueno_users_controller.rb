# frozen_string_literal: true

class DuenoUsersController < ApplicationController
  def index
    @dueno_users = DuenoUser.all.includes(:locals)
  end

  def show
    @dueno_user = DuenoUser.find(params[:id]).includes(:locals)
  end
end

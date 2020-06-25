# frozen_string_literal: true

class LocalsController < ApplicationController
  def index
    @locals = Local.all
  end

  def show
    @local = Local.find(params[:id])
  end

  def new
    @local = Local.new
  end

  def create
    local_params = params.require(:local).permit(:nombre, :direccion, :tipo, :dueno_user_id, :avatar)
    local_params['dueno_user_id'] = current_dueno_user.id

    @local = Local.create(local_params)
    if @local.save
      redirect_to locals_new_path, notice: 'The local has been succesfully created!'
    else
      redirect_to locals_new_path, notice: 'There has been an error while creating the local'
    end
  end

  def edit
    @local = Local.find(params[:id])
  end

  def update
    local_params = params.require(:local).permit(:nombre, :direccion, :tipo, :n_citas)
    @local = Local.find(params[:id])

    if @local.update(local_params)
      redirect_to local_path(@local.id), notice: 'The local has been succesfully edited!'
    else
      redirect_to local_path(@local.id), notice: 'There has been an error while editing the local'
    end
  end

  def destroy
    @local = Local.find(params[:id])
    @local.destroy
    redirect_to locals_path, notice: 'The local has been deleted'
  end

  def post_params
    params.require(:post).permit(:avatar)
  end

  def owner
    p "asdasasdadsasdasdasddasdadsasadas"
    @locals = Local.where("dueno_user_id": current_dueno_user.id)
  end

end

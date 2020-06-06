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
    p "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    local_params = params.require(:local).permit(:nombre, :direccion, :tipo, :dueno_user_id)
    local_params["dueno_user_id"] = current_dueno_user.id
    p local_params

    @local = Local.create(local_params)
    if @local.save
      redirect_to locals_new_path, notice: 'El local ha sido creado exitosamente'
    else
      redirect_to locals_new_path, notice: 'Ha ocurrido un error al crear el local'
    end
  end

  def edit
    @local = Local.find(params[:id])
  end

  def update
    local_params = params.require(:local).permit(:nombre, :direccion, :tipo, :n_citas)
    @local = Local.find(params[:id])

    if @local.update(local_params)
      redirect_to local_path(@local.id), notice: 'Local editado con éxito'
    else
      redirect_to local_path(@local.id), notice: 'Ha ocurrido un error al editar el local'
    end
  end

  def destroy
    @local = Local.find(params[:id])
    @local.destroy
    redirect_to locals_path, notice: 'Local eliminado con éxito'
  end
end

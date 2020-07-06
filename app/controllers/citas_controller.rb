# frozen_string_literal: true

class CitasController < ApplicationController
    def new
    @cita = Cita.new
    @locals = Local.all.includes(:reviews)
    if params.permit(:create)[:create] == 'false'
      @matched_user = params.permit(:matched_user)[:matched_user]
      @citas = Cita.all
    else
      cita_params = params.permit(:sender_id, :receiver_id, :local_id, :fecha, :hora, :accepted)
      @cita = Cita.create(cita_params)
      @citas = Cita.all if @cita.save
      redirect_to show_match_My_match_path, notice: "Congratulations! We've sent your request for the date"
    end
  end

  def show
    @citas = Cita.all
    @users = User.all
    @locals = Local.all
  end

  def update
    if params.permit(:delete)[:delete] == 'true'
      @cita = Cita.find(params[:cita_id])
      @cita.destroy
    else
      cita_params = params.permit(:accepted)
      @cita = Cita.find(params[:cita_id])
      if @cita.update(cita_params)
      end
    end
    redirect_to show_match_My_match_path, notice: 'We are so sorry, but the date is cancelled'
  end
end

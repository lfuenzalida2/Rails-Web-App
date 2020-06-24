class CitasController < ApplicationController
    def new
        @cita = Cita.new
        @locals = Local.all
        if params.permit(:create)[:create] == 'false'
            @matched_user = params.permit(:matched_user)[:matched_user]
            @citas = Cita.all
        else
            cita_params = params.permit(:sender_id, :receiver_id, :local_id, :fecha, :hora, :accepted)
            @cita = Cita.create(cita_params)
            if @cita.save
                @citas = Cita.all
            end
            redirect_to show_match_My_match_path, notice: 'La cita ha sido creada exitosamente'
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
        redirect_to show_match_My_match_path, notice: 'Cita declinada'
    end
end

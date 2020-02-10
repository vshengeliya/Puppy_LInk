class SessionController < ApplicationController
  def new
  end

  def breeder_create
    @breeder = Breeder.find_by(name: params[:name])
      if @breeder && @breeder.authenticated(password: params[:password])
        redirect_to breeder_path(@breeder)
      else
        flash[:messages] = @breeder.errors.full_message[0]
        render :new
      end
    end

    def destroy
      sessions[:breeder_id] = nil
    end

end
class SessionController < ApplicationController
  def breeder_new
  end

  def breeder_create
    @breeder = Breeder.find_by(name: params[:name])
      if @breeder && @breeder.authenticated(password: params[:password])
        redirect_to breeder_path(@breeder)
      else
        flash[:messages] = @breeder.errors.full_messages[0]
        render :new
      end
    end

    def breeder_destroy
      sessions[:breeder_id] = nil
    end


    def new_user
    end

    def create_user

      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.user_id
        redirect_to user_path(@user)
      else 
        flash[:messages] = @user.errors.full_messages[0]
        render :new_user
      end
    end

    def destroy_user
      session[:user_id] = nil
    end

end
class SessionController < ApplicationController
  def breeder_new
  end

  def breeder_create
    @breeder = Breeder.find_by_name(params[:name])
      if @breeder && @breeder.authenticate(params[:password])
        session[:breeder_id] = @breeder.id
        redirect_to breeder_path(@breeder)
      else
      
        flash.now[:messages] = "Sorry! Breeder name or password is not correct. Tty again."
        render :breeder_new
      end
    end

    def breeder_destroy
      session[:breeder_id] = nil
      redirect_to ""
    end

    def new_user
    end

    def create_user
      @user = User.find_by_name(params[:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else 
        flash.now[:messages] = "Sorry! User name or password is not correct. Try again."
        render :new_user
      end
    end

    def destroy_user
      session[:user_id] = nil
      redirect_to ""
    end

    def destroy_both
      if
      session[:user_id]
      session[:user_id] = nil
      else
      session[:breeder_id]
      session[:breeder_id] = nil
      end
      redirect_to ""
    end


    def get_profile
      if
        session[:user_id]
        redirect_to user_path(current_user)
        elsif
        session[:breeder_id]
        redirect_to breeder_path(current_breeder)
        else
          redirect_to ""
        end
    end
      

end
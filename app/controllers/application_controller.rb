class ApplicationController < ActionController::Base
    
    def current_breeder
        if session[:breeder_id]
            Breeder.find(session[:breeder_id])
        end
    end
    
    def breeder_logged_in?
        current_breeder
    end
    
    def breeder_authorized
        redirect_to '/breeders/login' unless breeder_logged_in?
    end

    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        end
    end
    
    def user_logged_in?
        current_user
    end

    def user_authorized
        redirect_to '/users/login' unless user_logged_in?
    end

end

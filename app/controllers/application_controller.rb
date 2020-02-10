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

end

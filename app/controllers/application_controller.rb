class ApplicationController < ActionController::Base
  include Pundit
  #layout :layout_by_resource
  

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  
  private
	  def user_not_authorized
	  	flash[:notice]="you are not authorized to access in this area"
	  	redirect_to root_path
	  end

  
    def layout_by_resource
      if devise_controller? && resource_name == :admin
        "admin"
      else
        "application"

      end
    end


    



end

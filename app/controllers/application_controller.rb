class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def after_sign_in_path_for(resource)
      if !session[:foo].nil?
        bike_path(session[:foo])
      else
        root_path
      end
    end


  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,
      #:password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :photo, :first_name, :last_name])
  end
end



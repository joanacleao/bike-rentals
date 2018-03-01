class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,
      #:password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :photo, :first_name, :last_name])
  end
end



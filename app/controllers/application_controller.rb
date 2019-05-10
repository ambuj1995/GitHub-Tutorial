class ApplicationController < ActionController::Base
  before_action :authenticate_user!
<<<<<<< HEAD
=======
  protect_from_forgery with: :exception
   
  before_action :configure_permitted_parameters, if: :devise_controller?
 
  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit( :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:password, :password_confirmation, :current_password, :avatar) }
  end

>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
end

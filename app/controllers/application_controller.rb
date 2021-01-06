class ApplicationController < ActionController::Base

 before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nickname, :password, :password_confirmation, :age) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:nickname, :password, :password_confirmation) }
  end
  

end
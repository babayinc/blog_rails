class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parametrs, if: :devise_controller?

  private

  def configure_permitted_parametrs
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  end

end

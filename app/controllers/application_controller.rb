class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  
  
  
  protected
  
  def after_sign_in_path_for(resourse)
    photos_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
  end

    def soy_karina?
    if user_signed_in? && current_user.karina?
      redirect_to root_path, notice: "No tienes permiso para realizar esta acción. Por favor inicia sesión o registrate" 
      end
    end
  
  def soy_registrado?
    if user_signed_in? && current_user.registrado?
      redirect_to root_path, notice: "No tienes permiso para realizar esta acción. Por favor inicia sesión o registrate"
    end
  end
end

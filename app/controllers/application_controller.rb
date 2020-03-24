class ApplicationController < ActionController::Base
	  before_action :configure_permitted_parameters, if: :devise_controller?

  protected


    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:telephone, :password])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :nom, :telephone, :sexe_id, :age_id, :star_id, :statut_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :nom, :telephone, :sexe_id, :age_id, :star_id, :statut_id])
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_sign_up_params, if: :devise_controller?

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

=begin
  protected
    def after_sign_in_path_for(resource)
      sign_in_url = new_admin_session_url
      if request.referer == sign_in_url
        redirect_to gossips_path
      else
        stored_location_for(resource) || request.referer || root_path
      end
    end
=end

end

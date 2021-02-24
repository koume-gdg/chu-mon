class ApplicationController < ActionController::Base
  before_action :configure_parmitted_parameters, if: :devise_controller?

  private

  def configure_parmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[shop_name owner_name city])
  end
end

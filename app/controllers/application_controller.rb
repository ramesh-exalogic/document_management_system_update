class ApplicationController < ActionController::Base
	 before_action :authenticate_user!
	  before_action :configure_permitted_parameters, if: :devise_controller?

  

  

 
  protected

   def configure_permitted_parameters
    # Permit additional parameters for sign up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])

    # Permit additional parameters for account update
    devise_parameter_sanitizer.permit(:account_update, keys: [:role])
  end

   def after_sign_in_path_for(resource)
    # Redirect to a specific path, e.g., user dashboard
    dashboard_path # Change this to your desired path
  end

  
end

class ApplicationController < ActionController::Base
  #Before actions are manditory steps to be taken before any actions set out in the controller. 
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    # Best practice: lowing visabliity of methods with private- these are not intented to be actions. 
    # They are used to set up constraints between actions. 
    # Here the parmas are that the customer must have a valid username/ login and registration to use the Marketplace. 
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end

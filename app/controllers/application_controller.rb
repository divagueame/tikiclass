class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index 
    p "INDEX IN APPLICAITON CONTROLEER"
  end

  protected

       def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :apellidos, :isTeacher, :email, :password)}

            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :apellidos,:isTeacher, :email, :password, :current_password)}
       end

end

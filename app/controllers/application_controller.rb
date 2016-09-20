class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  protected

  def configure_permitted_parameters
  	 devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password)}
  	 devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :company_name, :name, :last_name, :account_category_id, :avatar) }
  	 devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :company_name, :name, :last_name , :avatar) }
  end

  def after_sign_in_path_for(resource)
    current_user
  end

  def after_update_path_for(resource)
     current_user
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end


  
end

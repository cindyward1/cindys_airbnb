class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

protected

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def after_sign_in_path_for(resource)
    if resource.type == "Landlord"
      landlord_root_path
    elsif resource.type == "Renter"
      renter_root_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:type, :username, :email, :password,
                                                            :password_confirmation, :remember_me,
                                                            :date_joined) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password,
                                                                   :password_confirmation,
                                                                   :current_password) }
    devise_parameter_sanitizer.for(:user) { |u| u.permit(:type, :username, :email, :password,
                                                         :password_confirmation, :remember_me,
                                                         :date_joined)}
  end
end

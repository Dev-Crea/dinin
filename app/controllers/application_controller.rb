# Primary class
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery prepend: true

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:nom, :prenom, :email, :password, :password_confirmation,
                  :current_password)
    end
  end

  private

  def f_html(format, url, text)
    format.html { redirect_to url, notice: text }
  end
end

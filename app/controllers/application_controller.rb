class ApplicationController < ActionController::Base
  helper_method :current_cart
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def cart
    session[:cart] ||= []
  end

  protect_from_forgery with: :exception
end

# frozen_string_literal: true

# Application controller
class ApplicationController < ActionController::API
    before_action :doorkeeper_authorize!
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

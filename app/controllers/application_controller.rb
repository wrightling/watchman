class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def num_events
    cookies[:num_events] ||= Watchman.config.default_num_events
    cookies[:num_events].to_i
  end
end

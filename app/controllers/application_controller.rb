class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def num_events
    cookies.permanent[:num_events] ||= Watchman.config.default_num_events
    cookies.permanent[:num_events].to_i
  end

  def log_level
    cookies.permanent[:log_level] ||= Watchman.config.default_log_level
  end
end

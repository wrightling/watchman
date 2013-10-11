class LoggedExceptionsController < ApplicationController
  def show
    @exception_details = LoggedException.exception_details(params[:event_id])
  end
end

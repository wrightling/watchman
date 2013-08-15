# Load the Rails application.
require File.expand_path('../application', __FILE__)

#Sequel
Sequel::Model.plugin :active_model

# Initialize the Rails application.
Watchman::Application.initialize!

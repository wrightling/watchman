config = Rails.configuration.database_configuration[Rails.env]
username = config['username']
password = config['password']
url = config['url']

DB = Sequel.connect("#{url};user=#{username};password=#{password}")

config = Rails.configuration.database_configuration[Rails.env]

username = String(config['username'])
password = String(config['password'])
url = config['url']

if (username.empty? or password.empty?)
  DB = Sequel.connect(url)
elsif
  DB = Sequel.connect("#{url};user=#{username};password=#{password}")
end

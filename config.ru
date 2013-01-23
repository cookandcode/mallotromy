# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
# require "rack-rewrite"

# ENV['RACK_ENV'] ||= 'development'

# if ENV['RACK_ENV'] == 'development' 
# 	ENV['SITE_URL'] = 'localhost:3000' 
# else 
# 	ENV['SITE_URL'] = 'www.mallotromy.com' 
# end

# use Rack::Rewrite do 
# 	r301 %r{.*}, "http://#{ENV['SITE_URL']}$&", :if => Proc.new { |rack_env| 
# 		# rack_env['SERVER_NAME'].start_with?('www') || rack_env['SERVER_NAME'].include?("mallotromy.herokuapp.com")
# 		rack_env['SERVER_NAME'].include?("mallotromy.herokuapp.com")
# 	}

# 	r301 %r{(.+)/$}, '$1' 
# end

run Mallotromy::Application

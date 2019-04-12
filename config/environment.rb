# Load the Rails application.
require_relative 'application'
require './config/api_stuff.rb'
require './config/api_keys.rb' 

# Initialize the Rails application.
Rails.application.initialize!

#why do I have to switch them back and forth every time
#require_relative 'api_stuff.rb'
#require_relative 'api_keys.rb'
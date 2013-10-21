# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
FirstApp::Application.initialize!

config.logger.level = Logger::DEBUG

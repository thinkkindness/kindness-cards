# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
KindnessCard::Application.initialize!

# Force HTML5
Haml::Template.options[:format] = :html5

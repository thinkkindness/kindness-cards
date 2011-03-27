# Load the rails application
require File.expand_path('../application', __FILE__)
#require 'yaml'
#YAML::ENGINE.yamler= 'syck'

# Initialize the rails application
KindnessCard::Application.initialize!

# Force HTML5
Haml::Template.options[:format] = :html5

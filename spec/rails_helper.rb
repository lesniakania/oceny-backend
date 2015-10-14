ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
if Rails.env.production?
  abort("The Rails environment is running in production mode!")
end
require 'spec_helper'
require 'rspec/rails'

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end

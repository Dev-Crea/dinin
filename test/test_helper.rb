ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# rubocop:disable Style/ClassAndModuleChildren
class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end
# rubocop:enable Style/ClassAndModuleChildren

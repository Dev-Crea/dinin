ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/autorun'
require 'mongoid'
require 'mongoid-minitest'

# rubocop:disable Style/ClassAndModuleChildren
class ActionController::TestCase
  # Add more helper methods to be used by all tests here...
  include Devise::TestHelpers
  include Mongoid::Matchers
  include FactoryGirl::Syntax::Methods
end
# rubocop:enable Style/ClassAndModuleChildren

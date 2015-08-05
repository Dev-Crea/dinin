require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"
require "active_support/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Modele
  class Application < Rails::Application
    config.i18n.locale = :fr
    config.i18n.default_locale = :fr
    config.assets.css_compressor = :yui
    config.assets.js_compressor = :yui
    config.mongoid.logger = Logger.new($stdout, :info)
  end
end

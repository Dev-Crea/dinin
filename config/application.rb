require File.expand_path('../boot', __FILE__)

require "rails"
require "active_model/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"
require "active_support/all"

Bundler.require(*Rails.groups)

module Modele
  class Application < Rails::Application
    config.i18n.locale = :fr
    config.i18n.default_locale = :fr
    config.assets.css_compressor = :yui
    config.assets.js_compressor = :yui
    Mongoid.logger.level = Logger::DEBUG
    Moped.logger.level = Logger::DEBUG
  end
end

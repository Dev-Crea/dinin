require File.expand_path('../boot', __FILE__)

require 'rails'
require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'
require 'active_support/all'
require 'i18n/backend/fallbacks'
require 'sass/rails'

Bundler.require(*Rails.groups)

module Modele
  # Primary class to application
  class Application < Rails::Application
    config.i18n.available_locales = :fr
    config.i18n.locale = :fr
    config.i18n.default_locale = :fr
    I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
    config.i18n.fallbacks = { 'fr' => 'en' }
  end
end

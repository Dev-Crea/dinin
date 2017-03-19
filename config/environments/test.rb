Rails.application.configure do
  config.cache_classes = true
  config.eager_load = false
  config.serve_static_files   = true
  config.static_cache_control = 'public, max-age=3600'
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_dispatch.show_exceptions = false
  config.action_controller.allow_forgery_protection = false
  config.action_mailer.delivery_method = :test
  config.active_support.test_order = :random
  config.active_support.deprecation = :stderr
  # Configuration mongo
  Mongoid.logger.level = Logger::DEBUG
  Moped.logger.level = Logger::DEBUG

  # Configuration mailer
  config.action_mailer.default_url_options = {
    host: 'localhost',
    port: 3000
  }
  config.action_mailer.smtp_settings = {
    address: 'mail.gandi.net',
    port: 587,
    user_name: Settings.mailer.user,
    password: Settings.mailer.password,
    authentication: 'plain',
    enable_starttls_auto: true
  }
end

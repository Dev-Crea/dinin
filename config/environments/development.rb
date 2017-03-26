Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true

  # Configuration mailer
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:                Settings.mailer.address,
    port:                   587,
    user_name:              Settings.mailer.user,
    password:               Settings.mailer.password,
    authentication:         :plain,
    enable_starttls_auto:   true
  }

  # Configuration mongo
  Mongoid.logger.level = Logger::DEBUG
end

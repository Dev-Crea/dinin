Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.public_file_server.enabled = true
  config.assets.precompile = ['*.js', '*.css', '*.scss']
  config.assets.compile = true
  config.assets.digest = true
  config.assets.js_compressor = :uglifier
  config.log_level = :warn
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new

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
end

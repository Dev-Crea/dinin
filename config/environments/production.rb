Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = true
  config.assets.precompile = ['*.js', '*.css', '*.scss']
  config.assets.compile = true
  config.assets.digest = true
  config.log_level = :debug
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  # Default URL for email
  config.action_mailer.default_url_options = { host: ENV['VIRTUAL_HOST'] }
  config.action_mailer.delivery_method = :smtp
end

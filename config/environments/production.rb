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
  config.action_mailer.default_url_options = {:host => 'dinin.media.fr'}
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'mail.gandi.net',
    port:                 587,
    domain:               'd2go.fr',
    user_name:            'admin@d2go.fr',
    password:             'D2g_e45lt5',
    authentication:       'plain',
    enable_starttls_auto: true
  }
end

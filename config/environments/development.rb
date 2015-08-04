Rails.application.configure do
  # Default
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true
  # Configuration for assets compress
  config.assets.css_compressor = :yui
  config.assets.js_compressor = :yui
end

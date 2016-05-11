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
  # Action mailer
  config.action_mailer.default_url_options = { host: ENV['VIRTUAL_HOST'] }
  # Configuration mongo
  Mongoid.logger.level = Logger::DEBUG
  Moped.logger.level = Logger::DEBUG
  # Configure guard-livereload with rack
  config.middleware.insert_before Rack::Lock, Rack::LiveReload
  config.middleware.use(Rack::LiveReload,
                        min_delay: 1000,
                        max_delay: 10_000,
                        live_reload_port: 35_729,
                        host: 'livereload',
                        ignore: [%r{dont/modify\.html$}]
                       )
end

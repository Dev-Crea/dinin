# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Fix for action mailer
Rails.application.routes.default_url_options[:host] = Settings.mailer.host
Rails.application.routes.default_url_options[:port] = Settings.mailer.port
Rails.application.routes.default_url_options[:protocol] =
  Settings.mailer.protocol

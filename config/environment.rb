# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Action Mailer configuration
ActionMailer::Base.smtp_settings = {
  user_name: 'contact@d2go.fr',
  password: 'CON_e45lt5',
  domain: 'd2go.fr',
  address: 'mail.gandi.net',
  port: 587,
  authentification: :plain,
  enable_starttls_auto: true
}

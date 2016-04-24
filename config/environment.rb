# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Action Mailer configuration
ActionMailer::Base.smtp_settings = {
  user_name: ENV['SMTP_USER'],
  password: ENV['SMTP_PASSWORD'],
  domain: 'd2go.fr',
  address: 'mail.gandi',
  port: 587,
  authentification: :plain,
  enable_starttls_auto: true
}

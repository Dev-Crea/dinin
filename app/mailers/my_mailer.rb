# frozen_string_literal: true

class MyMailer < Devise::Mailer
  # gives access to all helpers defined within `application_helper`.
  helper :application

  # Optional. eg. `confirmation_url`
  include Devise::Controllers::UrlHelpers
  include DefaultUrlOptions

  # to make sure that your mailer uses the devise views
  default template_path: 'devise/mailer'
end

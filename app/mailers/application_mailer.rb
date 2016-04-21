# Generic class mailer
class ApplicationMailer < ActionMailer::Base
  default from: 'admin@d2go.fr'
  layout 'mailer'
end

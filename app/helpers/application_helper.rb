# Generic helper
module ApplicationHelper
  # Submit button
  def submit_button(resource, text)
    resource.submit text, class: 'button'
  end
end

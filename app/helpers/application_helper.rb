# Generic helper
module ApplicationHelper
  # Submit button
  def submit_button(resource, text)
    resource.submit text, class: 'button'
  end

  # Closable button
  def closable
    classes = 'close-button'
    button_tag :button, class: classes, 'aria-label': 'Dismiss alert',
                        'data-close': true do
      content_tag :span, fa_icon('times'), 'aria-hidden': true
    end
  end
end

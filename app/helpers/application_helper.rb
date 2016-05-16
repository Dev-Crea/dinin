# Generic helper
module ApplicationHelper
  # Submit button
  def submit_button(resource, text)
    resource.submit text, class: 'button'
  end

  # Closable button
  def closable(notice, alert)
    if notice || alert
      content_tag :div, class: close_classes(notice, alert),
                        'data-closable': '', id: 'message' do
        capture do
          concat closable_message(notice, alert)
          concat closable_action
        end
      end
    end
  end

  private

  def closable_message(notice, alert)
    content_tag :p do
      capture do
        concat notice
        concat alert
      end
    end
  end

  def closable_action
    content_tag :button, class: 'close-button', 'aria-label': 'Dismiss alert',
                         'data-close': '', type: 'button' do
      content_tag :span, '&times;'.html_safe, 'aria-hidden': true
    end
  end

  def close_classes(notice, alert)
    classes = 'fixed-bottom callout text-center '
    classes << 'success' if notice
    classes << 'alert' if alert
  end
end

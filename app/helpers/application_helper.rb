# frozen_string_literal: true

# rubocop:disable Style/GuardClause
# rubocop:disable Rails/OutputSafety

# Generic helper
module ApplicationHelper
  # Submit button
  def submit_button(resource, text)
    resource.submit text, class: 'button'
  end

  def news_not_reading
    count = 0
    readers = Reader.all(current_utilisateur)
    readers.each do |reader|
      count += reader.news.unread.count
    end
    count
  end

  def button_off(path, options = {})
    link_to path, options, class: 'buddon secondary' do
      yield
    end
  end

  # Closable button
  def closable(n, a)
    if n || a
      test = n.nil? ? 'success' : 'alert'
      content_tag :div, class: close_classes(test), 'data-closable': '' do
        capture do
          concat closable_message(n, a)
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

  def close_classes(msg)
    "fixed-bottom callout text-center #{msg}"
  end
end
# rubocop:enable Style/GuardClause
# rubocop:enable Rails/OutputSafety

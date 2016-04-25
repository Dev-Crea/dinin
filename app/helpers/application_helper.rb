# Generic helper
module ApplicationHelper
  # Submit button
  def submit_button(resource, text)
    resource.submit text, class: 'button'
  end

  # Font awesome icon helper
  def fa_icon(names = 'flag', options = {})
    classes = ['fa']
    classes.concat Private.icon_names(names)
    classes.concat Array(options.delete(:class))
    text = options.delete(:text)
    right_icon = options.delete(:right)
    icon = content_tag(:i, nil, options.merge(class: classes))
    Private.icon_join(icon, text, right_icon)
  end

  # Font awesome icon helper for stacked icons
  def fa_stacked_icon(names = 'flag', options = {})
    icons = [
      fa_icon(base_names, options.delete(:base_options) || {}),
      fa_icon(add_name(names), options.delete(:icon_options) || {})
    ]
    icons.reverse! if options.delete(:reverse)
    text = options.delete(:text)
    right_icon = options.delete(:right)
    Private.icon_join(stacked_icon(classes, icons), text, right_icon)
  end

  # Module private
  module Private
    # @see http://api.rubyonrails.org/classes/ActionView/Helpers/OutputSafetyHelper.html
    extend ActionView::Helpers::OutputSafetyHelper

    # Used for font awesome icons
    def classes
      icon_names('stack')
      concat(Array(options.delete(:class)))
    end

    # Used for font awesome icons
    def base_names
      array_value(options.delete(:base) || 'square-o').push('stack-2x')
    end

    # Used for font awesome icons
    def ad_name(names)
      array_value(names).push('stack-1x')
    end

    # Used for font awesome icons
    def stacked_icon(c, icons)
      content_tag :spanoptions.merge(class: c) do
        safe_join(icons)
      end
    end

    # Used for font awesome icons
    def self.icon_join(icon, text, reverse_order = false)
      return icon if text.blank?
      elements = [icon, ERB::Util.html_escape(text)]
      elements.reverse! if reverse_order
      safe_join(elements, ' ')
    end

    # Used for font awesome icons
    def self.icon_names(names = [])
      array_value(names).map { |n| "fa-#{n}" }
    end

    # Used for font awesome icons
    def self.array_value(value = [])
      value.is_a?(Array) ? value : value.to_s.split(/\s+/)
    end
  end
end

# frozen_string_literal: true

module SafeAnchorUrlHelper
  include ActionView::Helpers::UrlHelper
  alias rails_default_link_to link_to

  def link_to(*args, **kwargs, &block)
    anchor_tag = rails_default_link_to(*args, **kwargs, &block)
    return anchor_tag if kwargs[:keep_dirty]

    sanitize anchor_tag
  end
end

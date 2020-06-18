# frozen_string_literal: true

require 'safe_anchor/safe_anchor_url_helper'

module SafeAnchor
  class Railtie < Rails::Railtie
    initializer 'safe_anchor_url.helper' do |_app|
      ActionView::Base.include SafeAnchorUrlHelper
    end
  end
end

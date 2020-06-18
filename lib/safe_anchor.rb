# frozen_string_literal: true

require 'safe_anchor/version'

module SafeAnchor
  require 'safe_anchor/railtie' if defined?(Rails)
end

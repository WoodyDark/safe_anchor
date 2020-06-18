# frozen_string_literal: true

require_relative 'lib/safe_anchor/version'

Gem::Specification.new do |spec|
  spec.name          = 'safe_anchor'
  spec.version       = SafeAnchor::VERSION
  spec.authors       = ['Jeffrey Soong']
  spec.email         = ['darkwoodpresents@gmail.com']

  spec.summary       = 'SafeAnchor ensures all link_to helper in Rails are sanitized by default'
  spec.description   = 'SafeAnchor follows a secure-by-default principle and sanitizes all link_to helper output by default. This gem wraps around the default link_to and sanitize method provided by Rails.'
  spec.homepage      = 'https://github.com/WoodyDark/SafeAnchor'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
